<?php

#================================#
#       TorrentTrader 3.8.3      #
#  http://torrenttrader.uk       #
#--------------------------------#
#       Created by M-Jay         #
#       Modified by MicroMonkey, #
#       Coco, Botanicar          #
#================================#


require_once("backend/functions.php");
dbconn();
session_start();

$site_config["LEFTNAV"] = false;
$site_config["MIDDLENAV"] = false;
$site_config["RIGHTNAV"]  = false;

if (!empty($_REQUEST["returnto"])) {
    if (!isset($_GET["nowarn"])) {
        $nowarn = T_("MEMBERS_ONLY");
    }
}

if (isset($_POST["username"]) && isset($_POST["password"])) {
    if (!empty($_POST["username"]) && !empty($_POST["password"])) {
        $username = $_POST["username"];
        $password = $_POST["password"];

        // Basic input validation
        if (strlen($username) > 50 || strlen($password) > 128) {
            $message = T_("INPUT_TOO_LONG");
        } else {
            $username = htmlspecialchars($username); // Only for output, if needed
            $password_hash = passhash($password);
            $stmt = $GLOBALS["DBconnector"]->prepare("SELECT id, password, secret, status, enabled FROM users WHERE username = ? LIMIT 1");
            $stmt->bind_param("s", $username);
            $stmt->execute();

            if ($stmt->error) {
                error_log("Query failed: " . $stmt->error);
                show_error_msg(T_("ERROR"), "An unexpected error occurred. Please try again later.", 1);
                die();
            }
            $res = $stmt->get_result();
            $row = $res->fetch_assoc();

            if ($row) {
                if ($row["password"] !== $password_hash) {
                    $message = T_("LOGIN_INCORRECT");
                } elseif ($row["status"] === "pending") {
                    $message = T_("ACCOUNT_PENDING");
                } elseif ($row["enabled"] === "no") {
                    $message = T_("ACCOUNT_DISABLED");
                } else {
                    if (isset($_POST['cf-turnstile-response'])) {
                        $turnstile_response = $_POST['cf-turnstile-response'];
                        if (empty($turnstile_response)) {
                            $message = "Please complete the verification";
                        } else {
                            $secretKey = $site_config['CLOUDSECRET'];
                            $ip = $_SERVER['REMOTE_ADDR'];
                            $ch = curl_init();
                            curl_setopt($ch, CURLOPT_URL, 'https://challenges.cloudflare.com/turnstile/v0/siteverify');
                            curl_setopt($ch, CURLOPT_POST, 1);
                            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query([
                                'secret' => $secretKey,
                                'response' => $turnstile_response,
                                'remoteip' => $ip
                            ]));
                            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
                            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
                            $response = curl_exec($ch);
                            if (curl_errno($ch)) {
                                $message = "Verification error: " . curl_error($ch);
                            }
                            curl_close($ch);
                            $response = json_decode($response);

                            if ($response->success !== true) {
                                $message = "Verification failed. Please try again.";
                            }
                        }
                    } else {
                        $message = "Verification missing. Please try again.";
                    }
                }
            } else {
                $message = T_("LOGIN_INCORRECT");
            }
        }
    } else {
        $message = T_("NO_EMPTY_FIELDS");
    }

    if (!isset($message) || !$message) {
        session_regenerate_id(true); // new session testing. If not, then remove
        logincookie($row["id"], $row["password"], $row["secret"]);
        if (!empty($_POST["returnto"])) {
            header("Location: " . $_POST["returnto"]);
            exit();
        } else {
            header("Location: index.php");
            exit();
        }
    } else {
        show_error_msg(T_("ACCESS_DENIED"), $message, 1);
    }
}

stdhead(T_("LOGIN"));

if (isset($nowarn)) {
    show_error_msg(T_("ERROR"), $nowarn, 0);
}

begin_frame(T_("LOGIN"));
?>

<form method="post" action="account-login.php">
    <table border="0" cellpadding="5" cellspacing="5" align="center" width="50%">
        <tr>
            <td align="left" class="css"><b><?php echo T_("USERNAME"); ?>:</b></td><td class="css-right"> <input type="text" size="50" name="username" /> </td>
        </tr>
        <tr>
            <td align="left" class="css"><b><?php echo T_("PASSWORD"); ?>:</b></td><td class="css-right"><input type="password" size="50" name="password" /></td>
    </tr>
        <tr>
            <td align="left" class="css"> BOT check:</td><td class="css-right" align="center">
                <div class="cf-turnstile" data-sitekey="<?php echo $site_config['CLOUDSITEKEY']; ?>"></div>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="css">
                <input type="submit" class="button" value="<?php echo T_("LOGIN"); ?>" />
                <br />
                <br />
                <i><?php echo T_("COOKIES");?></i>
            </td>
        </tr>
    </table>

    <?php
    if (!empty($_REQUEST["returnto"])) {
        ?>
        <input type="hidden" name="returnto" value="<?php echo cleanstr($_REQUEST["returnto"]); ?>" />
        <?php
    }
    ?>
</form>

<p align="center">
    <a href="account-signup.php"><?php echo T_("SIGNUP"); ?></a> |
    <a href="account-recover.php"><?php echo T_("RECOVER_ACCOUNT"); ?></a>
</p>

<?php
end_frame();
stdfoot();
?>

<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>

<?php

#================================#
#       TorrentTrader 3.8.3      #
#  http://torrenttrader.uk       #
#--------------------------------#
#       Created by M-Jay         #
#       Modified by MicroMonkey, #
#       Coco, Botanicar          #
#================================#

if (!$CURUSER) {
	begin_block(T_("LOGIN"));
?>
<form method="post" action="account-login.php">
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr><td>
		<table border="0" cellpadding="1" align="center">
			<tr>
			<td align="center"><font face="verdana" size="1"><b><?php echo T_("USERNAME"); ?>:</b></font></td>
			</tr><tr>
			<td align="center"><input type="text" size="12" name="username" /></td>
			</tr><tr>
			<td align="center"><font face="verdana" size="1"><b><?php echo T_("PASSWORD"); ?>:</b></font></td>
			</tr><tr>
			<td align="center"><input type="password" size="12" name="password"  /></td>
			</tr><tr>
			<td align="center"><input type="submit" value="<?php echo T_("LOGIN"); ?>" /></td>
			</tr>
		</table>
		</td>
		</tr>
	<tr>
<td align="center">[<a href="account-signup.php"><?php echo T_("SIGNUP");?></a>]<br />[<a href="account-recover.php"><?php echo T_("RECOVER_ACCOUNT");?></a>]</td> </tr>
	</table>
    </form> 
<?php
end_block();

} else {

begin_block($CURUSER["username"]);

	$avatar = htmlspecialchars($CURUSER["avatar"]);
	if (!$avatar)
	$avatar = $site_config["SITEURL"]."/images/default_avatar.png";

//==| Style and Language

	$ss_r = SQL_Query_exec("SELECT * from stylesheets");
	$ss_sa = [];
	while ($ss_a = mysqli_fetch_assoc($ss_r))
	{
	  $ss_id = $ss_a["id"];
	  $ss_name = $ss_a["name"];
	  $ss_sa[$ss_name] = $ss_id;
	}
	ksort($ss_sa);
	reset($ss_sa);

	$stylesheets = ""; // Initialize outside the loop
	foreach($ss_sa as $ss_name => $ss_id)
	{
	  if ($ss_id == $CURUSER["stylesheet"]) $ss = " selected='selected'"; else $ss = "";
	  $stylesheets .= "<option value='$ss_id'$ss>$ss_name</option>\n";
	}

//==| End Style and Language



	$userdownloaded = mksize($CURUSER["downloaded"]);
	$useruploaded = mksize($CURUSER["uploaded"]);
	$privacylevel = T_($CURUSER["privacy"]);

	if ($CURUSER["uploaded"] > 0 && $CURUSER["downloaded"] == 0)
		$userratio = "Inf.";
	elseif ($CURUSER["downloaded"] > 0)
		$userratio = number_format($CURUSER["uploaded"] / $CURUSER["downloaded"], 2);
	else
		$userratio = "---";

	print ("<center><img width='80' height='80' src='$avatar' alt='' /></center><br />" . T_("DOWNLOADED") . ": $userdownloaded<br />" . T_("UPLOADED") . ": $useruploaded<br />".T_("CLASS").": ".T_($CURUSER["level"])."<br />" . T_("ACCOUNT_PRIVACY_LVL") . ": $privacylevel<br />". T_("RATIO") .": $userratio");

	$connectable = get_row_count("peers", "WHERE connectable='yes' AND userid=$CURUSER[id]");
	$unconnectable = get_row_count("peers", "WHERE connectable='no' AND userid=$CURUSER[id]");
if ($unconnectable)
        print "<br>".T_('CONNECTABLE')."<b><font color='#FF0000' class='blink'>".T_('CONNECTABLENO')."</font></b>";
elseif ($connectable)
        print "<br>".T_('CONNECTABLE')."<b><font color='#00FF00'>".T_('CONNECTABLEYES')."</font></b>";
else
        print "<br>".T_('CONNECTABLE')."<b><font color='#FF9900'>".T_('CONNECTABLENA')."</font></b>";
?>


<center><a href="account.php"><?php echo T_("ACCOUNT"); ?></a> <br /> 
<?php if ($CURUSER["control_panel"]=="yes") {print("<a href=\"admincp.php\">".T_("STAFFCP")."</a>");}?>
</center>
<?php
end_block();
}
?>

<?php

#================================#
#       TorrentTrader 3.8.3      #
#  http://torrenttrader.uk       #
#--------------------------------#
#       Created by M-Jay         #
#       Modified by MicroMonkey, #
#       Coco, Botanicar          #
#================================#

begin_frame( T_("ONLINE_USERS_TODAY") );

$expires = 60; // Cache time in seconds

if (($rows = $TTCache->Get("usersonlinetoday_block", $expires)) === false) {
$res = SQL_Query_exec("SELECT id, username, class, donated, warned FROM users WHERE enabled = 'yes' AND status = 'confirmed' AND username != 'System' AND UNIX_TIMESTAMP('".get_date_time()."') - UNIX_TIMESTAMP(users.last_access) <= 86400 ORDER BY username");
   $rows = array();

while ($row = mysqli_fetch_assoc($res)) {
   $rows[] = $row;
}
   $TTCache->Set("usersonlinetoday_block", $rows, $expires);
}
echo "<div id='uOnline' class='bMenu' ><center>";
echo "<button class=\"Tsiz\"><i class=\"fab fa-linux\" style=\"color:#fff\"></i><font color=#006699>&nbsp; &nbsp; Founder</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-user text-silver\"></i><font color=#dedede>&nbsp; &nbsp; &#268;lan</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-user-tie\" style=\"color:#1E90FF\"></i><font color=#1E90FF>&nbsp; &nbsp; Power User</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-user-shield\" style=\"color:#40E0D0\"></i><font color=#40E0D0>&nbsp; &nbsp; VIP</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-user-graduate\" style=\"color:#FFD700\"></i><font color=#FFD700>&nbsp; &nbsp; Uploader</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-user-cog\" style=\"color:#FF69B4\"></i><font color=#FF69B4>&nbsp; &nbsp; Moderator</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-user-secret\" style=\"color:#00C000\"></i><font color=#00C000>&nbsp; &nbsp; Administrator</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-user-astronaut\" style=\"color:#B6FF00\"></i><font color=#B6FF00>&nbsp; &nbsp; Gledalac</font></button> ";
echo "<button class=\"Tsiz\"><i class=\"fas fa-ban text-red\"></i><font color=red>&nbsp; &nbsp; Upozoren</font></button> ";
echo "<button class=\"Tsiz\"><sup><i class=\"fas fa-star text-gold fa-spin\"></i></sup><font color=gold>&nbsp; &nbsp; Donator</font></button> </center>";
echo "<hr>";
if (!$rows) {
   echo T_("NO_USERS_ONLINE");
   } else {
 echo "<ul>\n";
   for ($i = 0, $cnt = count($rows), $n = $cnt - 1; $i < $cnt; $i++) {
   $row = &$rows[$i];


switch ( $row['class'] ){

case 9:
$row["username"] = "<font color=#00C000>" . $row["username"] . "</font>"; //Administrator
break;
case 8:
$row["username"] = "<font color=#B6FF00>" . $row["username"] . "</font>"; //Gledalac
break;
case 7:
$row["username"] = "<font color=#006699>" . $row["username"] . "</font>"; //Administrator
break;
case 6:
$row["username"] = "<span style='color:#006699; background-image:url(https://media.giphy.com/media/2A3FJQOwcSDYuC7zXL/giphy.gif)';>    " . $row["username"] . "</span>     "; //Founder
break;
case 5:
$row["username"] = "<span style='color:#FF69B4; background-image:url(https://media.giphy.com/media/2A3FJQOwcSDYuC7zXL/giphy.gif)';> " . $row["username"] . " </span>"; //Moderator
break;
case 4:
$row["username"] = "<font color=#FFD700>" . $row["username"] . "</font>"; //Uploader
break;
case 3:
$row["username"] = "<span style='color:#40E0D0; background-image:url(https://media.giphy.com/media/2A3FJQOwcSDYuC7zXL/giphy.gif)';>    " . $row["username"] . "</span>     "; //VIP
break;
case 2:
$row["username"] = "<font color=#1E90FF>" . $row["username"] . "</font>"; //Power User
break;
case 1:
$row["username"] = "<font color=#f5f5f5>" . $row["username"] . "</font>"; //Members
break;
}

   $warned = null;

if ( $row['warned'] == 'yes' ){
   $warned = '<sup><i class="fas fa-ban text-red"></i></sup>';
}

   $donated = null;

if ($row['donated'] > 0){
   $donated = '<sup><i class="fas fa-star text-gold fa-spin"></i></sup>';
}

   echo "<li> &nbsp; <a href='account-details.php?id=$row[id]'>  $row[username] $warned $donated  </a>".($i < $n ? ", " : "")."</li>\n";
}
   echo "</ul><br></div>\n";
}
end_frame();
?>

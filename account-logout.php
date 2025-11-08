<?php

if (basename($_SERVER['PHP_SELF']) != basename($_SERVER['REQUEST_URI'])) {
    die("Invalid access");
}

require_once("backend/functions.php");
dbconn(); 

logoutcookie();
header("Location: index.php"); // Redirect to index.php
exit;
?>
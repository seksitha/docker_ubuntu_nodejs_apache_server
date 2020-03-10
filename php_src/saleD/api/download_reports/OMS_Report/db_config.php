<?php
  $dbhost = "localhost";
  $dbuser = "root";
  $dbpassword = "workshop2014";
  $db = "krukhmerdata";
  $config_blogname = "My first web";
  $server_con = mysql_connect($dbhost, $dbuser, $dbpassword);
  mysql_select_db($db,$server_con);
?>
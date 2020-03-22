<?php
function getDB() {
  $dbhost="database"; # link to docker container not localhost
  $dbuser="root";
  $dbpass="123456";
  $dbname="kk";
  $dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass); 
  $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  return $dbConnection;
}
?>

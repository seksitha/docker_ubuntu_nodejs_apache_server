<?php
function getDB() {
  $dbhost="localhost";
  $dbuser="root";
  $dbpass="workshop2014";
  $dbname="krukhmerdata";
  $dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass); 
  $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  return $dbConnection;
}
?>

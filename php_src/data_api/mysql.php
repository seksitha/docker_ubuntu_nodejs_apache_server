<?php
/*


*/
function getDB() {
   $dbhost = "localhost";
   $dbuser = "inventory";
   $dbpass = "123456";
   $dbname = "library";
   $database_class = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
   $database_class->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   return $database_class;
}


function read_data($infoId) {
   if($infoId ==='info_teacher'){
      $sql = "SELECT id, name, status from $infoId ";
   }else {
      $sql = "SELECT * FROM $infoId order by id asc limit 200";
   }
    
    try {
        $db = getDB();
        $stmt = $db->query("SET names utf8;");
        $stmt = $db->query($sql);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $db = null;
      //   echo "<pre>";
      //   print_r ($result);
        return $result;

    } catch (PDOException $e) {
        return $e;
    }
}

function insert_data($infoId,$key, $values){

	$sql = "INSERT INTO $infoId ($key) VALUES ($values)"; // this is just a prepare query
	//echo $sql; //echo this on will effect the success callback of $http with Yes return
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);

		foreach($_POST as $x => &$x_val){ // https://stackoverflow.com/questions/3774130/php-what-does-a-in-front-of-a-variable-name-mean
         // :TODO $_POST is a global variable and here where the sql get the values for insert query  
         $stmt->bindParam($x, $x_val);
		}
		$exec = $stmt->execute();	
      $id = $db->lastInsertId();
      $db = null;
		return ($id);
	} catch(PDOException $e) {	
		echo $e; 	
	}
}

function update_data($infoId, $dataString, $dataArray){

	//print_r($data) ; //turn this on will effect the success callback of $http with Yes return

	$sql = "UPDATE $infoId SET $dataString WHERE id =" . $dataArray['id'];
	//echo $sql; //turn this on will effect the success callback of $http with Yes return
	//error can accur if the field is in the mysql reserve words like change, update
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);
		foreach($dataArray as $x => &$x_val){
	 		$stmt->bindParam($x, $x_val);
 		}
		 $status = $stmt->execute();	
		 $db = null;
		return 'done';
	} 
	catch(PDOException $e) {	
      echo $e;
	}
}

function delete_data($infoId, $did){
   $sql = "DELETE from $infoId where id = '$did'";
	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql);  
      $db = null;
      return 'done';
	} catch(PDOException $e) {		
		echo $e;
	}
}

?>
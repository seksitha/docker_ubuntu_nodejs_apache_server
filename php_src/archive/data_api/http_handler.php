<?php
   include_once 'mysql.php';
   $query_string = array();
   parse_str($_SERVER['QUERY_STRING'], $query_string);
   // echo $_SERVER['QUERY_STRING'];
   if(!isset($query_string['query'])) return;

   if ($query_string['query'] === 'read' && isset($query_string['table_name'])) {
      $infoId = $query_string['table_name'];
      $result = read_data($infoId);
      echo json_encode($result, JSON_NUMERIC_CHECK);
      return;
   }
   if ($query_string['query'] === 'update' && isset($query_string['table_name'])) {
      $infoId = $query_string['table_name'];
      $values = implode("', '", array_values($_POST));
      $data = '';
      foreach ($_POST as $key => $value) {
      $data = $data . $key . "=:" .$key . ", ";
      }
      $data = rtrim($data, ', ');
      $result = update_data($infoId, $data, $_POST);
      echo json_encode($result, JSON_NUMERIC_CHECK);
      return;
   }

   if ($query_string['query'] === 'insert' && isset($query_string['table_name'])) {
      $infoId = $query_string['table_name'];
      unset($_POST['id']);
      $request = $_POST;
      $key = implode( ", ", array_keys($request)); 
      //prepare mysql strng with bind parameter by : sermi colum
      $values = implode(", :", array_keys($request));
      //echo $key;
      $values_insert = ":" . $values;
      $result = insert_data($infoId, $key, $values_insert);
      echo json_encode($result, JSON_NUMERIC_CHECK);
      return;
   }
   if ($query_string['query'] === 'delete' && isset($query_string['table_name'])) {
      $infoId = $query_string['table_name'];
      $delete_id = $query_string['id'];
      $result = delete_data($infoId, $delete_id);
      echo json_encode($result, JSON_NUMERIC_CHECK);
      return;
   }

?>

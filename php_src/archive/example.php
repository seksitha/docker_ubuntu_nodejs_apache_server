<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Document</title>
   </head>
   <body>

      <h4>Form with post request</h4>
      <form action="data_api/http_handler.php?query=read&table_name=info_teacher" method="POST"> 
         <input type="text" name='query' value='read'>
         <input type="submit" value="Make Requset">
      </form>
      <br>
      <br>


      <h4>form with Get request</h4>
      <form action="data_api/http_handler.php?query=delete" method="GET"> 
         <input type="text" name='query' value='read'>
         <input type="text" name='table_name' value='info_teacher'>
         <input type="submit" value="Make Requset">
      </form>
      <br>
      <br>
      
      
      <h4>Form use Ajax javascript </h4>
      <form>
         <input id='table' type="text" name='table_name' value="info_teacher">
         <button onClick='getData(event)'>request Data</button>
      </form>
      <br>
      <br>
      <div id="demo"></div>
      
   </body>

   <script>
      var counter = 0;
      function getData(e){
         e.preventDefault()                                                // prevent page to reload
         var table_name = document.getElementById('table').value           // get value of the table_name
         counter++;                                                        // increament counter 
         var xhttp = new XMLHttpRequest();                                 // create ajax class object
         xhttp.onreadystatechange = function() {                           // create event when request
            if (this.readyState == 4 && this.status == 200) {               // check if request is ready and success
               document.getElementById("demo").innerHTML = counter + '<br>' + xhttp.responseText; // put result on the div
            }
         };
         xhttp.open("GET", "data_api/http_handler.php?query=read&table_name=" + table_name, true); // start open request to the event
         xhttp.send();                                                                             // send request to server php
      }


   </script>
</html>

<?php

getMe();

function getMe(){
    $foo = 'this is some foo'
    ?>
    <div><?php echo $foo ?></div>
    <span>this is span</span>
    <?php

    function re(){
        ?>
        <span>helo world</span>
        <?php
    }
    // re();

}



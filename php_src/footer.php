    
<?php
print_r($_GET);
$file = fopen("php.config","w");
echo fwrite($file,$_GET['val']);
fclose($file);

?> 
     <div class="jumbotron row">this is footer</div>
    </body>
</html>
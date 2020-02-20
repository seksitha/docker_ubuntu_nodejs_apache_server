<?php 

//include_once('header.php') ;
$urli = explode('/' , $_SERVER['REQUEST_URI']);
echo $_SERVER['QUERY_STRING'];
http_response_code(501);
http_response_code();
// in code ignighter the uri syntax is example.com/controler/function/id or with the index.php
echo '<pre>';
print_r($_SERVER);


$single_quote1 = " this single quote ";
$single_quote2 = ' my mother\'s name' ;
$double_quote1 = " \" this is double quote in ";
$double_quote2 = ' " this is double quote  ';

// echo " $single_quote1 $single_quote2 $double_quote1 $double_quote2 friend";
// the message
$msg = "First line of text\nSecond line of text";

// use wordwrap() if lines are longer than 70 characters
$msg = wordwrap($msg,70);

// send email
$mymail = mail("seksitha@gmail.com","My subject",$msg);

echo $mymail;
$myfile = fopen("php.config", "r") or die("Unable to open file!");
echo'<form action="footer.php" method="get">';
echo '<textarea rows="10" cols="30" name="val">' . fread($myfile,filesize("php.config")) .'</textarea>';
echo '<input type="submit" value="OK">';
echo '</form>';
fclose($myfile);
?>

<div class "container-fluid">
   <p>This is index page</p>
</div>

<?php 
// include_once($urli[2].'.php') 
?>

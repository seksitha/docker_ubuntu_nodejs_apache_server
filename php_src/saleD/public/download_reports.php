<?php

ini_set('max_execution_time', 60);
require('db_config.php');

$login_content = file_get_contents("php://input");
$login = json_decode($login_content,true);
$shop = $login['shop'];
$report_type = $login['report_type'];
$date_start = $login['date_start'];
$date_end = $login['date_end'];
if($shop =='oms_sale'){
    $employee='oms_info_employee';
} elseif($shop =='krung_sale'){
    $employee ='krung_info_employee';
} else {
    $employee = 'spa_info_employee_product';
}
if($report_type == 'customer'){
    $query = " SELECT $shop.id, 
        inv_refer, 
        dayofmonth(date_bill) as Day, 
        Monthname(date_bill) as Month, 
        Year(date_bill) as Year, 
        date_bill as Date,
        if(nationality is null,'NULL',Nationality) as Nationalities, 
        If(Age<=20,'under20',
        If(Age>=21 And Age<=25,'21-25',
        If(Age>=26 And Age<=30,'26-30',
        If(Age>=31 And Age<=35,'31-35',
        If(Age>=36 And Age<=40,'36-40',
        If(Age>=41 And Age<=45,'41-45',
        If(Age>=46 And Age<=50,'46-50',
        If(Age>=51 And Age<=55,'51-50',
        If(Age>=56 And Age<=60,'56-60',
        If(Age Is Null,'Null','Above 60')))))))))) as AgeCateg, 
        hour(time) as Hour, 
        gender, 
        Round_UP as Discount, 
        Total,
        $employee.name
    From $shop
    LEFT JOIN $employee 
    ON $shop.employee = $employee.id 
    Where date_bill between '$date_start' and '$date_end'";

} elseif ($report_type == 'product') {
    $query = "SELECT $shop.`id`, inv_refer, dayofmonth(date_bill) as Day, Monthname(date_bill) as Month, Year(date_bill) as Year, date_bill as `Date`,
        if( Nationality is null,'NULL',Nationality) as Nationalities, 
        If(Age<=20,'under20',
        If(Age>=21 And Age<=25,'21-25',
        If(Age>=26 And Age<=30,'26-30',
        If(Age>=31 And Age<=35,'31-35',
        If(Age>=36 And Age<=40,'36-40',
        If(Age>=41 And Age<=45,'41-45',
        If(Age>=46 And Age<=50,'46-50',
        If(Age>=51 And Age<=55,'51-50',
        If(Age>=56 And Age<=60,'56-60',
        If(Age Is Null,'Null','Above 60')))))))))) as AgeCateg, 
        hour(Time) as Hour, Gender, Round_UP as Discount, name as product ,category, qty,
        (`price` * (1 - discount)) as price,((`price` * (1 - discount)) * qty) as subTotal
    from $shop left join ". $shop. "_detail on ".$shop.".`id` = ".$shop. "_detail.`main_id` left join info_product
    on " .$shop. "_detail.`product` = `info_product`.id Where date_bill between '$date_start' and '$date_end'";
}
//echo $query;

$result = mysql_query($query);

/*
 * echo the input array as csv data maintaining consistency with most CSV implementations
 * - uses double-quotes as enclosure when necessary
 * - uses double double-quotes to escape double-quotes 
 * - uses CRLF as a line separator
 */

function echocsv($fields){
    $svc = 'some';
    $separator = ''; //like var in js
    foreach ($fields as $field) {
        if (preg_match('/\\r|\\n|,|"/', $field)) {
            $field = '"' . str_replace('"', '""', $field) . '"';
        }
        $svc = $svc . $separator . $field;
        $separator = ',';
    }
    $svc = $svc ."\r\n";
    //echo $svc;
    return $svc;
}
/*
 * send response headers to the browser
 * following headers instruct the browser to treat the data as a csv file called export.csv
 */



/*
 * output header row (if atleast one row exists)
 */

$row = mysql_fetch_assoc($result);
$filesvc;
if ($row) {
    $filesvc = echocsv(array_keys($row));
}

/*
 * output data rows (if atleast one row exists)
 */

while ($row) {
    $filesvc = $filesvc . echocsv($row);
    $row = mysql_fetch_assoc($result);
}

$size = strlen($filesvc);

header('Content-Type: text/csv');
header('Content-Disposition: attachment');
header('Content-length:' . $size);

echo $filesvc;


?>


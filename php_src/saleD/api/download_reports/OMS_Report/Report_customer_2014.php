<?php
ini_set('max_execution_time', 300);
require 'db_config.php';

$query = "
    SELECT oms_sale.id, 
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
        oms_info_employee.name
From `oms_sale` 
LEFT JOIN oms_info_employee 
ON oms_sale.employee = oms_info_employee.id 
Where Year(date_bill) = '2014'";


$result = mysql_query($query);
/*
 * send response headers to the browser
 * following headers instruct the browser to treat the data as a csv file called export.csv
 */

header('Content-Type: text/csv');
header('Content-Disposition: attachment;filename=report_customer.csv');

/*
 * output header row (if atleast one row exists)
 */

$row = mysql_fetch_assoc($result);
if ($row) {
    echocsv(array_keys($row));
}

/*
 * output data rows (if atleast one row exists)
 */

while ($row) {
    echocsv($row);
    $row = mysql_fetch_assoc($result);
}

/*
 * echo the input array as csv data maintaining consistency with most CSV implementations
 * - uses double-quotes as enclosure when necessary
 * - uses double double-quotes to escape double-quotes 
 * - uses CRLF as a line separator
 */

function echocsv($fields)
{
    $separator = '';
    foreach ($fields as $field) {
        if (preg_match('/\\r|\\n|,|"/', $field)) {
            $field = '"' . str_replace('"', '""', $field) . '"';
        }
        echo $separator . $field;
        $separator = ',';
    }
    echo "\r\n";
}
?>

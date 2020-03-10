<?php
// sa
$sale_monthly = "SELECT sum(total) ,date_format(date_bill,'%d-%M-%y') as date FROM `sale_spa` where date_format(date_bill,'%m%y')='0915' group by date_format(date_bill,'%d-%m-%y') order by date_bill";
$product_monthly = "SELECT date_bill, product, name, sum(qty) FROM sale_spa left join `sale_detail_spa` on sale_spa.id = sale_detail_spa.main_id left join info_product_spa on sale_detail_spa.product = info_product_spa.id where date_format(date_bill, '%m%y')='0915' group by product";
$customer = "SELECT nationality, date_bill, count(*) FROM `sale_spa` where date_format(date_bill, '%m%y')='0915' group by nationality";
$feedback = "SELECT feedback, sum(if (score = '4',1,0)) as excellent, sum(if (score = '3',1,0)) as good,sum(if (score = '2',1,0)) as Average,sum(if (score = '1',1,0)) as Poor from (SELECT date_bill, feedback, score from sale_spa left join `sale_spa_feedback` on sale_spa.id = sale_spa_feedback.main_id where date_format(date_bill,'%m%y')='0915') as main group by feedback";
$therapist = 'SELECT therapist,name, sum(duration) from sale_spa left join sale_comis_thera on sale_spa.id = sale_comis_thera.main_id left join info_employee on sale_comis_thera.therapist = info_employee.id where date_format(date_bill,'%m%y')='0915' group by therapist';

$sql_spa_sale_anualy = "SELECT sum(total) ,date_format(date_bill,'%Y-%M') FROM `sale_spa` group by date_format(date_bill,'%y-%m')"; // sa

$sql_oms_monthly = "SELECT sum(total) ,date_format(date,'%M,%Y') FROM `sales` group by date_format(date,'%y-%m')"  // oms monthly sale
per2 = "" & TempVars![lay002]

    per1 = "" & TempVars![lay001]
    per2 = "" & TempVars![lay002]
    per3 = "" & TempVars![lay003]
    per4 = "" & TempVars![thisy001]
    per5 = "" & TempVars![thisy002]
    per6 = "" & TempVars![thisy003]
    
    peroids = Array(per1, per2, per3, per4, per5, per6)
    
    sql = "select e.*, [product id].id as productid from "
    
    sql = sql & "(select c.*, [product name] from"
      
    sql = sql & "(select [product id]"
        For i = 0 To UBound(peroids)
            sql = sql & ", sum( iif(pdate = '" & peroids(i) & "',QTy,0)) as [" & peroids(i) & "]"
        Next
    sql = sql & " from (select format(date, 'm-yyyy') as Pdate, [Product id], sum (quantity) as Qty from (SELECT sales.Date, [sale detial].Quantity, [Product id]"
    sql = sql & " FROM sales Left join [sale detial] ON sales.[sale ID] = [sale detial].[Sale ID]  UNION All SELECT [Data2013-14].Date, [Data2013-14].Quantity,[Data2013-14].id as [Product ID] FROM [Data2013-14]) as x"
    sql = sql & " group by  format(date, 'm-yyyy'), [product id]) as d"

    sql = sql & " group by [product id]) as c"
    sql = sql & " left join [product id] on c.[product id] = [product id].id"
    sql = sql & " where [product id].source = 'kru khmer'"
    sql = sql & " ) as e right join [product id] on e.[product id] = [product id].id where source = 'kru khmer' order by [product id].id";

?>



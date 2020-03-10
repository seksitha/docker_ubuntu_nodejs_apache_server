<?php
//ini_set('memory_limit','512M');
session_start();
ini_set('max_execution_time', 300);
//$_SESSION['saleD'] = 'login';
include 'dbConfig.php';
require 'Slim/Slim.php';
include_once 'sql.php';
//include_once 'spa_sql.php';
\Slim\Slim::registerAutoloader();
$slim_app = new \Slim\Slim();

$slim_app->get('/getInfo(/:infoId(/:param1(/:param2)))','getInfo');
$slim_app->get('/merge(/:infoId(/:param1(/:param2)))','merge');

$slim_app->post('/updateInfo/:infoId','updateInfo');
$slim_app->post('/addInfo/:infoId','addInfo');
$slim_app->post('/download_report/','download_report');
$slim_app->delete('/deleteInfo/:infoId/:did','deleteInfo');

$slim_app->post('/login', 'login'); 
$slim_app->get('/logout', 'logout'); 
$slim_app->post('/isLogin', 'isLogin'); 

$slim_app->run();

function login() {
	$app = \Slim\Slim::getInstance();

	$login_content = file_get_contents("php://input");
	$login = json_decode($login_content,true);
	$username = $login['username'];
	$password = $login['password'];

	//echo $password;

	$sql = "select * from users where name = :username and password = :password";

	try {
		$db = getDB();
		//$stmt = $db->query("SET names utf8;");  
		$statement = $db->prepare($sql);  
		$statement->execute(array('username'=>$username, 'password'=>$password));
		$db = null;
		//echo $statement->fetchColumn();
		if($statement->rowCount() === 1){
			$_SESSION['saleD'] = 'loginSale';
			$app->response->setStatus(200);
			//echo 'login';
		} else{
			//echo 'login no';
			$app->response->setStatus(401);
		}
	} catch(PDOException $e) {	
		$app->response->setStatus(404);	
		echo $e->getMessage();
	}
}

function logout(){
	unset($_SESSION['saleD']);
}

function isLogin(){
	$app = \Slim\Slim::getInstance();
	if (isset($_SESSION['saleD'])) { 
		if($_SESSION['saleD']==='loginSale'){
			$app->response->setStatus(200);
		}
	} else{
		$app->response->setStatus(401);
		return;
	}
}
/*
* Create Api for mysql 
*/
function getInfo($infoId, $param1 = '', $param2 = ''){ /////Get
	$app = \Slim\Slim::getInstance();	
	// if (!isset($_SESSION['saleD'])) { 
	// 	//echo 'is not log in' ;
	// 	$app->response->setStatus(401);
	// 	return;
	// }
	switch ($infoId) {
		/*
		 * sql for infos
		*/
		// query for total inventory!
		case 'sale_inventory':
			$sqli = sql_inventory($param1, $param2);
			$sql = $sqli; 
		break;

		case 'sale_report':
			$sql = "SELECT date_format(date_bill, '%d-%M-%Y') as `date sale`, sum(total) as sale  from `$param1` where date_format(date_bill,'%m%Y') = '$param2' group by date_bill "; 
		break;

		case 'sale_report_peroid_oms':
			$sql = "SELECT date_format(date_bill, '%d-%M-%Y') as `date sale`, sum(total) as sale  from oms_sale where (date_bill between '$param1' and '$param2') group by date_bill "; 
		break;

		case 'sale_report_peroid_krung':
			$sql = "SELECT date_format(date_bill, '%d-%M-%Y') as `date sale`, sum(total) as sale  from krung_sale where ( date_bill between '$param1' and '$param2') group by date_bill "; 
		break;

		case 'delivery':
			$sql = "SELECT * from inventory_product_out where status = '$param1'";
		break;

		// report for overall year has been sale for 3 years
		case 'oms_anual_sale':
			$sql = "SELECT `0`, sum(Jan) as Jan, sum(Feb) as Feb, sum(Mar) as Mar, sum(Apr) as Apr, sum(May) as May, 
						sum(Jun) as Jun,sum(Jul) as Jun,sum(Jul) as July,sum(Aug) as Aug,sum(Sep) as Sep,sum(Oct) as Oct,
						sum(Nov) as Nov, sum(Deci) as `Dec`

						from

							(SELECT 
						    date_format(date_bill,'%Y') as `0`,
						    if( date_format(date_bill,'%m') = '01', total,0) as Jan,
						    if( date_format(date_bill,'%m') = '02', total,0) as Feb,
						    if( date_format(date_bill,'%m') = '03', total,0) as Mar,
						    if( date_format(date_bill,'%m') = '04', total,0) as Apr,
						    if( date_format(date_bill,'%m') = '05', total,0) as May,
						    if( date_format(date_bill,'%m') = '06', total,0) as Jun,
						    if( date_format(date_bill,'%m') = '07', total,0) as Jul,
						    if( date_format(date_bill,'%m') = '08', total,0) as Aug,
						    if( date_format(date_bill,'%m') = '09', total,0) as Sep,
						    if( date_format(date_bill,'%m') = '10', total,0) as Oct,
						    if( date_format(date_bill,'%m') = '11', total,0) as Nov,
						    if( date_format(date_bill,'%m') = '12', total,0) as Deci

							From oms_sale) as data

						group by `0` having `0` is not null ";
		break;

		// 
		case 'estimate_month_compare':
			$sql_top = 'select `0`';
			$sql_down = "from (select date_format(date_bill,'%c%y') as `0`";
			for ($x = 1; $x <=31 ; $x++) {
				$sql_top = $sql_top . ", sum(`$x`) as `$x`";
				$sql_down = $sql_down . ", if(date_format(date_bill,'%e') = '$x', total,0) as `$x`";
			}
			$sql = $sql_top . $sql_down . "from oms_sale) as data group by `0` having `0`='415' or `0`= '515'";
		//echo "$sql"; 
			//between '2015-3-1' and '2015-4-31
		break;
		case 'estimate_this_year_trend':
			$sql_top = 'SELECT `0`';
			$sql_down = "from (select date_format(date_bill,'%c%y') as `0`";
			for ($x = 1; $x <=31 ; $x++) {
				$sql_top = $sql_top . ", sum(`$x`) as `$x`";
				$sql_down = $sql_down . ", if(date_format(date_bill,'%e') = '$x', total,0) as `$x`";
			}
			$sql = $sql_top . $sql_down . "FROM oms_sale) as data group by `0` having `0`= '216' or `0`= '316'";
		//echo "$sql"; 
			//between '2015-3-1' and '2015-4-31
		break;
		case 'estimate_last_year_trend':
			$sql_top = 'SELECT `0`';
			$sql_down = "from (select date_format(date_bill,'%c%y') as `0`";
			for ($x = 1; $x <=31 ; $x++) {
				$sql_top = $sql_top . ", sum(`$x`) as `$x`";
				$sql_down = $sql_down . ", if(date_format(date_bill,'%e') = '$x', total,0) as `$x`";
			}
			$sql = $sql_top . $sql_down . "FROM oms_sale) as data group by `0` having `0`='215' or `0`= '315' or `0`= '415'";
		//echo "$sql"; 
			//between '2015-3-1' and '2015-4-31
		break;

		case 'sale_category_last_year':
			$sql = "SELECT category, sum(qty * `price`) as Qty from oms_sale left join oms_sale_detail 
			on oms_sale.`id` = oms_sale_detail.main_id left join info_product 
			on oms_sale_detail.`product` = info_product.id where source = 'kru khmer' and date_format(date_bill,'%c%y') = '415' group by `category`";
			//echo "$sql" . "<br>"; 
			//between '2015-3-1' and '2015-4-31
		break;
		case 'sale_category_this_year_last_month':
			$sql = "SELECT category, sum(qty * `price`) as Qty from oms_sale left join oms_sale_detail 
			on oms_sale.`id` = oms_sale_detail.`main_id` left join info_product 
			on oms_sale_detail.`product` = info_product.id where source = 'kru khmer' and date_format(date_bill,'%c%y') = '1215' group by `category`";
			//echo "$sql" . "<br>"; 
			//between '2015-3-1' and '2015-4-31
		break;
		/*
		*
		*/
		case 'last_start_stock':
			$sql = "SELECT date from inventory_product_out where status = 'SD_restart' order by date desc limit 1";
			break;
		case 'getLastId':
			$sql = "SELECT id from $param1 order by id desc limit 1";
		break;

		case 'lastRecord': // or last row // use by sale form when call new row
			$sql = "SELECT * FROM $param1 order by `id` desc limit 1";
		break;
		// 

		case 'lastInvoice': // 
			$sql = "SELECT if(max(inv_num) is null,0,max(inv_num)) as lastNum from $param1 where date_format(date_bill, '%m%y') = '$param2' ";
		break;
		case 'oms_sale':
			$sql = "SELECT * FROM $infoId where date_bill >= (SELECT date_bill FROM $infoId where date_bill is not null order by id DESC limit 1)-INTERVAL 1 month or date_bill is null order by id asc limit 20";
		break;
		case 'shop_detail':
			$sql = "SELECT $param1" . "_detail" .".* FROM  $param1"."_detail left join $param1 on $param1". "_detail.`main_id` = ". "$param1.`id`" . " where date_bill >= (SELECT date_bill FROM oms_sale c where date_bill is not null order by c.id DESC limit 1)-INTERVAL 1 month or date_bill is null " . " order by `id` asc limit 100";
		break;
		case 'shop_gift':
			$sql = "SELECT $param1" . "_gift" .".* FROM  $param1"."_gift left join $param1 on $param1". "_gift.`main_id` = ". "$param1.`id`" . "where date_bill >= (SELECT date_bill FROM oms_sale c order by c.id DESC limit 1)-INTERVAL 1 month or date_bill is null " . " order by `id` asc ";
		break;
		case 'inventory_product_out_detail': // or last row
			$sql = "SELECT * FROM inventory_product_out_detail where main_id = '$param1'";
		break;
		case 'edit_commission': // or last row
			$sql = "SELECT * from (
					(SELECT a.id , TRUNCATE(sum((qty*price)*0.2),2) as amount, 
					date_format(date_bill,'%Y-%m-1') as term, 
					inv_refer as reciept_number, 
					('oms') as shop,
					guide_phone,
					memo
					from oms_sale a left join oms_sale_detail b on a.id = b.main_id left join info_product c on b.product = c.id
					where date_format(date_bill,'%m%y')='$param1' and c.source = 'kru khmer' or c.source='krukhmer' group by a.id) 
				
				union all 

					(SELECT id, TRUNCATE(total*0.2,2) as amount, 
					date_format(date_bill,'%M-%Y') as term, 
					inv_refer as reciept_number,
					('krung') as shop, 
					guide_phone, 
					memo 
					from krung_sale where date_format(date_bill,'%m%y')='$param1')) as x 

			where memo is not null or guide_phone is not null 
			order by id ";
			// echo $sql;
		break;
		case 'get_total_commissions': // or last row
			$sql = "SELECT  guide_phone, truncate(sum(amount),2) as amount,('Called') as Called, ('NoReach') as NoReach,('NotExist') as NotExist,('Busy') as Busy FROM `guide_commission` where paid_state is null group by guide_phone order by amount DESC";
		break;
		case 'search_guide_commission': // or last row
			$sql = "SELECT id, inv_refer, term , truncate(amount,2) as amount, guide_phone  FROM `guide_commission` where guide_phone = $param1 and paid_state is null  ";
		break;
		case 'commission_report': // or last row
			$sql = "SELECT  date_format(date_paid,'%d-%M-%Y') as date_paid, guide_phone ,truncate(sum(amount),2) as amount  FROM `guide_commission` where paid_state is not null  group by guide_phone, date_paid having date_format(date_paid,'%M-%Y') = '$param1' order by date_paid";
		break;
		case 'commission_last_add': // or last row
			$sql = "SELECT term as date_add FROM `guide_commission` order by id desc limit 1";
		break;
		case 'commission_outstanding': // or last row
		$sql = "SELECT date_format(term, '%b-%Y') as peroid, truncate(sum(amount),2) as Total, truncate(sum(if(date_paid is not null, amount,0)),2) as Paid, truncate(sum(if(date_paid is null, amount,0)),2) as Outstanding FROM `guide_commission` group by date_format(term, '%b-%Y') order by term";
		break;
		case 'commission_outstanding_yearly': // or last row
		$sql = "SELECT date_format(term, '%Y') as peroid, truncate(sum(amount),2) as Total, truncate(sum(if(date_paid is not null, amount,0)),2) as Paid, truncate(sum(if(date_paid is null, amount,0)),2) as Outstanding FROM `guide_commission` group by peroid order by peroid";
		break;	
		case 'appendData':
			if($param1 == 'commission'){
				$dateNow = date('Y-m-d');
				$dateQuery = new DateTime($param2.'-1'); //param2 is (yyyy-mm) where PHP Y-m
				if (date('Y-m')==$param2 || date('Ym') < $dateQuery->format('Ym') ){
					$app->response->setStatus(500);
					echo"error date";
					return;
				}
				$sql = " INSERT INTO guide_commission (main_id, amount, term, inv_refer, guide_phone, date_add) 
				        SELECT *,'$dateNow' as date_add from (
						(SELECT a.id as main_id, TRUNCATE(sum((qty*price)*0.2),2) as amount, 
								date_format(date_bill,'%Y-%m-1') as term, 
								concat('oms-',a.id) as inv_refer, 
								guide_phone 
							from oms_sale a left join oms_sale_detail b on a.id = b.main_id left join info_product c on b.product = c.id
							where date_format(date_bill,'%Y-%m')='$param2' and c.source = 'kru khmer' or c.source='krukhmer' group by a.id) 
						union all 
						(SELECT id as main_id, TRUNCATE(total*0.2,2) as amount, date_format(date_bill,'%Y-%m-1') 
							as term, concat('krung-',inv_refer) as inv_refer , guide_phone from krung_sale 
							where date_format(date_bill,'%Y-%m')='$param2')) as x where guide_phone is not null order by main_id ";
			} elseif($param1 == 'deleteCommission'){
				$sql = "DELETE from guide_commission where guide_phone = '$param2'";
			}
		// echo $sql; 
		break;	

		// select record of the month acording to date_bill
		default: 
			if($param1 == null){
				$sql = "SELECT * FROM $infoId order by id asc ";
			}else {
				$sql = "SELECT * FROM $infoId where date_format(date_bill,'%m%y') = '$param1' order by id asc ";
			}
		break;

	}
	////////////////////////////////////////////////////////////////////////
	//echo $sql;
	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql); 
		if($infoId == 'appendData'){
			return;
		}
		$result = $stmt->fetchAll(PDO::FETCH_OBJ);
		//print_r($result);
		if (strpos($infoId, 'commission') !== false) { // check if there is commission words
    		$infoId = 'commission';
		}
		switch ($infoId) {
			case 'commission':
				echo json_encode($result);
			break;
			
			default:
				echo json_encode($result,JSON_NUMERIC_CHECK);
			break;
		}
		
		//echo json_encode($result);
		$db = null;
	} catch(PDOException $e) {	
		$app->response->setStatus(500);	
		echo $e->getMessage(); 
	}

}


/*
* Create Api for mysql 
*/
function addInfo ($infoId){ 
	$app = \Slim\Slim::getInstance();	
	if (!isset($_SESSION['saleD'])) { 
		//echo 'is not log in' ;
		$app->response->setStatus(401);
		return;
	}
	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata,true);// convert to array
	$key = implode( ", ", array_keys($request)); 
	//prepare mysql strng with bind parameter by : sermi colum
	$values = implode(", :", array_keys($request));
	$values1 = ":" . $values;
	$sql = "INSERT INTO $infoId ($key) VALUES ($values1)";
	//echo $sql; //echo this on will effect the success callback of $http with Yes return
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);
		foreach($request as $x => &$x_val){
   		$stmt->bindParam($x, $x_val);
   	}
		$status = $stmt->execute();	
		$db = null;
		echo '[{"response":"Yes"}]';
	} catch(PDOException $e) {	
		$app->response->setStatus(500); 	
		echo $e->getMessage(); 
	}
}
/*
* Update Api for mysql 
*/

function updateInfo($infoId){
	$app = \Slim\Slim::getInstance();	
	if (!isset($_SESSION['saleD'])) { 
		//echo 'is not log in' ;
		$app->response->setStatus(401);
		return;
	}
	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata, true);
	//print_r ($request); //turn this on will effect the success callback of $http with Yes return
	//echo $request['id']; //turn this on will effect the success callback of $http with Yes return
	$values = implode("', '", array_values($request));
	$data = '';
	foreach ($request as $key => $value) {
	 $data = $data . $key . "=:" .$key . ", ";
	 }
	 $data = rtrim($data, ', ');
	//echo $data; //turn this on will effect the success callback of $http with Yes return

	$sql = "UPDATE $infoId SET $data WHERE id =" . $request['id'];
	//echo $sql; //turn this on will effect the success callback of $http with Yes return
	//error can accur when if the field is in the mysql reserve words like change, update
	try {
		$db = getDB();
		$stmt = $db->prepare($sql);
		foreach($request as $x => &$x_val){
	 		$stmt->bindParam($x, $x_val);
 		}
		$status = $stmt->execute();	
		$db = null;
		echo '[{"response":"Yes"}]';
	} 
	catch(PDOException $e) {	
		$app->response->setStatus(500); 	
		echo $e->getMessage(); 
	}
}

/*
* Create Api for mysql 
*/
function deleteInfo ($infoId,$did) {
	$app = \Slim\Slim::getInstance();	
	if (!isset($_SESSION['saleD'])) { 
		//echo 'is not log in' ;
		$app->response->setStatus(401);
		return;
	}

	$sql = "DELETE from $infoId where id = '$did'";
	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql);  
		$db = null;
	} catch(PDOException $e) {		
		$app->response->setStatus(500); 

	}
}

function merge($infoId,$param1,$param2){ 
	$app = \Slim\Slim::getInstance();
	switch ($infoId) {
		case 'oms_sales':
			$sqlSelect = "SELECT * from oms_sales where id > 23309 order by id";
		break;
		case 'oms_details':
			$sqlSelect = "SELECT oms_details.* from oms_details where main_id >= 24488 order by id";
		break;
		break;
		case 'oms_gifts':
			$sqlSelect = "SELECT oms_gifts.* from oms_gifts where main_id >= 23547 order by id";
		break;

		case 'from_delivery':
			$sqlSelect = "select product, qty, number, (".$param2.")as main_id from (SELECT * FROM `inventory_product_out_detail` where main_id= " . $param1. " ) as a";
		echo $sqlSelect;
			break;
		default:
			# code...
		break;
	}
	//$sqlSelect = "select oms_gifts.* from oms_sales left join oms_gifts on oms_sales.id = oms_gifts.main_id  where oms_sales.date_bill < '2016-06-01' order by oms_gifts.id";

	//////////////////////////////////////////////////////////////////////
	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sqlSelect); // no need execute() because excecute use when do prepare;
		$request = $stmt->fetchAll(PDO::FETCH_ASSOC);
		//print_r($request[0]);

		$db = null;
		

	} catch(PDOException $e) {	
		$app->response->setStatus(500);	
		echo $e->getMessage(); 
	}

	$key = implode( ", ", array_keys($request[0])); 
	//prepare mysql strng with bind parameter by : sermi colum
	$values = implode(", :", array_keys($request[0]));
	$values = ":" . $values;
	switch ($infoId) {
		case 'from_delivery':
			$sql = "INSERT INTO inventory_product_out_detail ($key) VALUES ($values)";
		break;
	
		default:
			$sql = "INSERT INTO $param1 ($key) VALUES ($values)";
		break;
	}
	

	// try {
	// 	$db = getDB();
	// 	$stmt = $db->prepare($sql);

	// 	foreach($request as $data){
	// 		foreach($data as $x => &$x_val){
   	// 			$stmt->bindParam($x, $x_val);
   	// 		}
	// 	$stmt->execute();
	// 	}
	// 	$db = null;
	// } catch(PDOException $e) {
	// 	$app->response->setStatus(500);		
	// 	echo $e->getMessage(); 
	// }
}
function download_report (){ 
	$app = \Slim\Slim::getInstance();	
	if (!isset($_SESSION['saleD'])) { 
		//echo 'is not log in' ;
		$app->response->setStatus(401);
		return;
	}
	$content = file_get_contents("php://input");
	$postdt = json_decode($content,true);

	$shop = $postdt['shop'];
	$report_type = $postdt['report_type'];
	$date_start = $postdt['date_start'];
	$date_end = $postdt['date_end'];

	if($shop =='oms_sale'){
	    $employee='oms_info_employee';
	} elseif($shop =='krung_sale'){
	    $employee ='krung_info_employee';
	} elseif($shop == 'spa_sale_product') {
	    $employee = 'spa_info_employee_product';
	} else{
		$employee = 'spa_info_employee'; 
	}

	if($report_type == 'customer' && $shop != 'spa_sale_massage'){ // report_customer of OMS/ shop_spa
	    $sql = " SELECT $shop.id, 
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

	} elseif ($report_type == 'product' && $shop != 'spa_sale_massage') { // Product of OMS /shop spa
	    $sql = "SELECT $shop.`id`, inv_refer, dayofmonth(date_bill) as Day, Monthname(date_bill) as Month, Year(date_bill) as Year, date_bill as `Date`,
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
	        hour(Time) as Hour, Gender, Round_UP as Discount, 
			name as product ,
			category, 
			qty,
	        (`price` * (1 - discount)) as price,
			pay_by as payment,
			((`price` * (1 - discount)) * qty) as subTotal
	    from $shop left join ". $shop. "_detail on ".$shop.".`id` = ".$shop. "_detail.`main_id` left join info_product
	    on " .$shop. "_detail.`product` = `info_product`.id Where date_bill between '$date_start' and '$date_end'";
	
	} elseif ($report_type == 'customer' && $shop == 'spa_sale_massage') { // report_customer of massage
		$sql = " SELECT $shop.id, inv_refer, 
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
					hour(time) as Hour, customer, cus_email, if(cus_follow_up=0, 'No','Yes') as doneFollowUp,
					gender, 
					cus_oriented,
					book_method,
					pay_by as payment,
					if(isVAT = 1, 'VAT', 'NoVAT') as VAT,
					total,
					amount_commis,
					commissioner,
					partner,
					$employee.name as cashier
				From $shop
				LEFT JOIN $employee 
				ON $shop.cashier = $employee.id 
				Where date_bill between '$date_start' and '$date_end' order by date_bill";
		//echo $sql;
	}elseif ($report_type == 'product' && $shop == 'spa_sale_massage') { // Product of massage
		$sql = "SELECT a.`id`, inv_refer, dayofmonth(date_bill) as Day, Monthname(date_bill) as Month, Year(date_bill) as Year, date_bill as `Date`,
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
	        Gender, c.name as menue ,
			category, 
			qty, 
			discount as discount_percent,
			if(isVAT = 1, 'VAT', 'NoVAT') as VAT,
	        (b.`price` * (1-(discount/100))) as price_disc,
			if(isVAT=0,(b.`price` * (1-(discount/100))) * qty, (b.`price` * (1-(discount/100))) * qty *1.1) as subTotalVat, 
			pay_by as payment,
			d.name as employee
		from $shop a left join ". $shop. "_detail b on a.id = b.`main_id` left join spa_info_product c
	    on b.`product` = c.id  left join spa_info_employee d on b.therapist1 = d.id Where date_bill between '$date_start' and '$date_end' order by date_bill";
	
	}

	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql); 
		$result = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($result,JSON_NUMERIC_CHECK);
	} catch(PDOException $e) {	
		$app->response->setStatus(500); 	
		echo $e->getMessage(); 
	}
}

?>
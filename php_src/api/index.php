<?php
session_start();
//$_SESSION['spa'] = 'login';
include 'dbConfig.php';
require 'Slim/Slim.php';
include_once 'sql.php';
//include_once 'spa_sql.php';
\Slim\Slim::registerAutoloader();
$slim_app = new \Slim\Slim();

$slim_app->get('/getInfo(/:infoId(/:param1(/:param2)))','getInfo');
$slim_app->get('/getLastId/:infoId','getLastId');
$slim_app->get('/getRecord/:infoId/:did','getRecord');
$slim_app->get('/getCombo/:infoId','getCombo');
$slim_app->get('/checkInvoice/:infoId/:did','checkInvoice');
$slim_app->post('/updateInfo/:infoId','updateInfo');
$slim_app->post('/addInfo/:infoId','addInfo');
$slim_app->delete('/deleteInfo/:infoId/:did','deleteInfo');
$slim_app->post('/login', 'login'); 
$slim_app->get('/logout', 'logout'); 
$slim_app->get('/isLogin', 'isLogin'); 

$slim_app->run();

function login() {
	// call slim http status instant
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
			$_SESSION['spa'] = 'loginSpa';
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
	unset($_SESSION['spa']);
}

function isLogin(){
	$app = \Slim\Slim::getInstance();

	if ($_SESSION['spa']==='loginSpa') { 
		//echo $_SESSION['spa'];
		$app->response->setStatus(200);
	}else{
		$app->response->setStatus(401);
	}
}
/*
* Create Api for mysql 
*/
function getInfo($infoId, $param1 = '', $param2 = ''){ /////Get
	$app = \Slim\Slim::getInstance();	
	if (!isset($_SESSION['spa'])) { 
		//echo 'is not log in' ;
		return;
	}
	switch ($infoId) {
		/*
		 * sql for infos
		*/
		case 'info_product':
			$sql= "SELECT id, code, name, description, dir_price, ws_price, con_price, 
						 tour_price, status, category, source from $infoId order by id asc";
		break;
		case 'lastInfo':
			$sql = "SELECT * FROM $param1 order by id desc limit 1";
		break;

		/*
		* Schedule for spa
		*/

		case 'spa_schedule':
			$sql = "SELECT date_format(date_treatment,'%Y-%m-%d') as date_treatment FROM spa_sale_massage group by date_treatment order by date_treatment asc";
		break;
		case 'spa_schedule_list':
			$sql = "SELECT id, customer, date_treatment,time_start,time_end,room_treat as room,time_pickup,location_pickup FROM `spa_sale_massage` where date_treatment >= Now() ";
		break;
		case 'spa_schedule_detail':
			$sql = "SELECT spa_sale_massage.id, number as `#`, product as menus,qty FROM spa_sale_massage left join spa_sale_massage_detail on spa_sale_massage.id = spa_sale_massage_detail.main_id where date_treatment >= Now() order by time_start ";
		break;
		case 'spa_partner_backMargin':
			$sql = "SELECT date_bill, customer, b.name , if(isVAT=1,total/1.1,total) as sale, total/1.1*(b.margin_percentage/100) as margin FROM `spa_sale_massage` a left join spa_sale_customer b on a.partner = b.id where partner ='$param2' and date_format(date_bill,'%m%y')='$param1' and back_margin=1 ";
		break;
		case 'spa_partner_sale':
			$sql = "SELECT a.date_bill, a.id as invoice, a.voucher, customer, c.name , b.qty, b.price, b.discount, if(a.isVAT=1,0.1,0)as isVAT, ((b.qty*b.price)*(100-b.discount)/100)*if(a.isVAT=1,1.1,1) as subtotal FROM `spa_sale_massage` a left join spa_sale_massage_detail b on a.id = b.main_id left join spa_info_product c on b.product = c.id left join spa_sale_customer d on a.partner = d.id where partner ='$param2' and date_format(date_bill,'%m%y')='$param1'";
			// echo $sql;
			break;


		
		case 'info_id':
			$sql = "SELECT * FROM $param1 order by id asc";
		break;
		case 'spa_sale_massage':
			$sql = "SELECT * FROM $infoId where date_bill >= (SELECT date_bill FROM $infoId where date_bill is not null order by id DESC limit 1)-INTERVAL 3 month or date_bill is null order by id asc";
		break;
		case 'spa_sale_massage_detail':
			$sql = "SELECT a.* FROM $infoId a left join spa_sale_massage b on a.main_id = b.id where date_bill >= (SELECT date_bill FROM spa_sale_massage where date_bill is not null order by id DESC limit 1)-INTERVAL 3 month or date_bill is null order by id asc";
		break; 
		default: 
			$sql = "SELECT * FROM $infoId order by id asc";
		break;
		/*
		* Report monthly for spa
		*/
		// case 'Daily':
		// 	$date_where_clause = '%d%m%y';
		// 	break;
		// case 'Monthly':
		// 	
		// 	break;

	}

	if($infoId == 'daily'||'monthly'){
		if($infoId =='Daily'){
			$date_where_clause = '%d%m%y';
		}else if($infoId =='Monthly'){
			$date_where_clause = '%m%y';
		}
		switch ($param1) {
			case 'spa_sale': // the total is incule the 2% value in there already.
			//echo $date_where_clause;
			$sql = "SELECT date_format(date_bill,'%d-%M-%y') as date,  
					sum(if(pay_by='Cash',total,0)) as Cash, 
					sum(if(pay_by='Credit',total,0)) as CreditCard, 
					sum(if(pay_by='Voucher',total,0)) as Voucher, 
					sum(total)as `Sub-Total`,
					sum(if(isVAT=1,(total/1.1*10/100),0)) as `VAT10%`, 
					sum(total) - sum(if(isVAT=1,(total/1.1*10/100),0)) as Net
					FROM `spa_sale_massage` 
					where date_format(date_bill,'$date_where_clause')='$param2'
					group by date_format(date_bill,'%d-%m-%y')";
			break;

			case 'spa_booking_source': //source = booking method
				$sql = "SELECT if(book_method is null,'NULL',book_method) as `Booking Method`, count(*) as amount from spa_sale_massage where date_format(date_bill,'$date_where_clause')='$param2' and book_method<>'Antanue' group by book_method order by amount desc ";
			break;

			case 'spa_orientation': //source = booking method
				$sql = "SELECT if(cus_oriented is null,'NULL',cus_oriented) as `Orientation`, count(*) as amount from spa_sale_massage where date_format(date_bill,'$date_where_clause')='$param2' and cus_oriented<>'Antanue'group by cus_oriented order by amount desc ";
			break;

			case 'spa_customer':
				$sql = "SELECT if(nationality is null,'NULL', nationality) as nationality, count(*) as number FROM `spa_sale_massage` where date_format(date_bill, '$date_where_clause')='$param2' group by nationality order by number desc";
			break;

			case 'spa_menu':
			$sql = "SELECT name, sum(qty) as qty FROM spa_sale_massage right join `spa_sale_massage_detail` 
			on spa_sale_massage.id = spa_sale_massage_detail.main_id 
			left join spa_info_product on spa_sale_massage_detail.product = spa_info_product.id 
			where date_format(date_bill, '$date_where_clause')='$param2' group by product order by qty desc ";
			break;

			case 'spa_feedback':
				$sql = " SELECT feedback, sum(if (score = '4',1,0)) as excellent, sum(if (score = '3',1,0)) as good,
					sum(if (score = '2',1,0)) as Average,sum(if (score = '1',1,0)) as Poor 
					from (SELECT date_bill, feedback, score from spa_sale_massage left join `spa_sale_feedback` 
					on spa_sale_massage.id = spa_sale_feedback.main_id where date_format(date_bill,'$date_where_clause')='$param2') as main group by feedback";
			break;

			case 'spa_comission':
				$sql = "SELECT c.name, (sum(d.duration)/60) as amount from spa_sale_massage_detail a 
								left join spa_sale_massage b on a.main_id = b.id 
								left join spa_info_employee c on a.therapist1 = c.id 
								left join spa_info_product d on a.product = d.id 
								where date_format(b.date_bill,'$date_where_clause')='$param2' and therapist1 is not null
								group by therapist1 order by amount desc";
			break;

			case 'spa_booking_commis':
				$sql = "SELECT commissioner, sum(amount_commis)as amount from spa_sale_massage  
				        where date_format(date_bill,'$date_where_clause')='$param2' and commissioner is not null and commissioner !=''
								group by commissioner";
			break;

			case 'spa_transport': // minus credit card on spending because credit card only apply on sale earn not spending
				$sql = "SELECT date_format(date_bill,'%d-%m-%Y') as date, 
				sum(if(pay_by='Cash',earn_transport-spend_transport,0))-sum(if(pay_by='Credit',spend_transport,0))as Cash,  
				
				sum(if(pay_by='Credit',(earn_transport)*1.02,0))as CreditCard
				from spa_sale_massage 
				where date_format(date_bill,'$date_where_clause')='$param2' 
				group by date_bill having Cash <> 0 or CreditCard <>0";
			break;

			case 'spa_saleProduct': // total is already include the 2%
				$sql = " SELECT 
				sum(if(pay_by='Cash',total,0))as cash, 
				sum(if(pay_by='Credit Card',total,0))as credit_card, 
				sum(total) as sub_total, 
				(sum(if(pay_by='Cash',total,0)) + sum(if(pay_by='Credit Card',total,0))*(98/100)) as Net,
				date_format(date_bill,'%d-%m-%Y') as date 
				from spa_sale_product 
				where date_format(date_bill,'$date_where_clause')='$param2'
				group by date_bill";
			break;
			case 'spa_saleTour':  // why i'm not using the total is becuase it is calculated base on menu category
				$sql = "SELECT 
				(sum(if(isVAT=1,(qty*(spa_sale_massage_detail.price*(100 - discount)/100)),0))*1.1) +
				(sum(if(isVAT=0,(qty*(spa_sale_massage_detail.price*(100 - discount)/100)),0))*1) as `Sale`,
				(sum(if(isVAT=1,qty*(spa_sale_massage_detail.price*(100 - discount)/100),0))*0.10) as netVAT, 
				(sum((qty*(spa_sale_massage_detail.price*(100 - discount)/100)))) as `Net`, 
				date_format(date_bill,'%d-%m-%Y') as date 
								from spa_sale_massage left join spa_sale_massage_detail on spa_sale_massage.id = spa_sale_massage_detail.main_id 
								left join spa_info_product on spa_sale_massage_detail.product = spa_info_product.id 
								where date_format(date_bill,'$date_where_clause')='$param2' and category = 'Tour' group by date_bill";
			break;
			case 'spa_saleTreatment': // why i'm not using the total is becuase it is calculated base on menu category
								$sql = "SELECT 
				(sum(if(isVAT=1,qty*(spa_sale_massage_detail.price*(100 - discount)/100),0))*1.1)+
				(sum(if(isVAT=0,qty*(spa_sale_massage_detail.price*(100 - discount)/100),0))*1) as `Sale`,

				(sum(if(isVAT=1,qty*(spa_sale_massage_detail.price*(100 - discount)/100),0))*0.10) as netVAT, 
				(sum((qty*(spa_sale_massage_detail.price*(100 - discount)/100)))) as `Net`, 
				date_format(date_bill,'%d-%m-%Y') as date 
								from spa_sale_massage left join spa_sale_massage_detail on spa_sale_massage.id = spa_sale_massage_detail.main_id 
								left join spa_info_product on spa_sale_massage_detail.product = spa_info_product.id 
								where date_format(date_bill,'$date_where_clause')='$param2' and category = 'Treatment' group by date_bill";
			break;
			
			default:
				# code...
			break;
		}
	}
	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql);  
		$result = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		if($infoId=='info_id'){
			echo json_encode($result);
		}else{
			echo json_encode($result,JSON_NUMERIC_CHECK);
		}
		
		
	} catch(PDOException $e) {	
		$app->response->setStatus(500);	
		echo $e->getMessage(); 
	}

}

function getRecord($infoId,$did){ /////get
	if (!isset($_SESSION['spa'])) { 
		//echo $_SESSION['spa'] ;
		return;
	}
	$sql = "SELECT * from $infoId where main_id = $did";
	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql);  
		$result = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($result,JSON_NUMERIC_CHECK);

	} catch(PDOException $e) {		

	}
}

function getLastId($infoId){ /////Get
	if (!isset($_SESSION['spa'])) { 
		//echo $_SESSION['spa'] ;
		return;
	}
	switch($infoId){
		case 'sale':
			$sql = "SELECT id, inv_num from $infoId order by id desc limit 1";
		break;
		case 'last_start_stock':
			$sql = "SELECT date from product_out where status = 'oms_restart' order by date desc limit 1";
			break;
		default:
			$sql = "SELECT id from $infoId order by id desc limit 1";
		break;
	}

	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql);  
		$result = $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($result,JSON_NUMERIC_CHECK);	
	}
	catch(PDOException $e) {		 
	}
}


function getCombo($infoId){ /////Get
	if (!isset($_SESSION['spa'])) { 
		return;
	}
	else{
		switch ($infoId) {
			case 'info_employee':
				$sql = "SELECT id , name FROM $infoId order by id asc";
				break;
			case 'info_product':
				$sql = "SELECT id, code, name, dir_price  from $infoId order by id asc";
			break;
			case 'spa_info_product':
				$sql = "SELECT id, code, name, price  from $infoId order by id asc";
			break;
			case 'spa_info_employee':
				$sql = "SELECT id , name FROM $infoId order by id asc";
			break;
		}

	try {
			$db = getDB();
			$stmt = $db->query("SET names utf8;");  
			$stmt = $db->query($sql);  
			$result = $stmt->fetchAll(PDO::FETCH_OBJ);
			$db = null;
			echo json_encode($result,JSON_NUMERIC_CHECK);
			
		} catch(PDOException $e) {		
			 
		}
	}
}

function checkInvoice($infoId,$did){ /////Get
	if (!isset($_SESSION['spa'])) { 
		//echo $_SESSION['spa'] ;
		return;
	}
	switch ($infoId) {
		default:
			$sql = "SELECT if(max(inv_num) is null,0,max(inv_num)) as lastNum from $infoId where date_format(date_bill, '%m%y') = '$did' ";
			break;
	}
	try {
			$db = getDB();
			$stmt = $db->query("SET names utf8;");  
			$stmt = $db->query($sql);  
			$result = $stmt->fetchAll(PDO::FETCH_OBJ);
			$db = null;
			echo json_encode($result,JSON_NUMERIC_CHECK);
		} catch(PDOException $e) {		
			 
		}
}

/*
* Create Api for mysql 
*/
function addInfo ($infoId){ 
	if (!isset($_SESSION['spa'])) { 
		//echo $_SESSION['spa'] ;
		return;
	}
	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata,true);
	$key = implode( ", ", array_keys($request)); 
	//prepare mysql strng with bind param by : sermi colum
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
		echo $e->getMessage(); 
	}
}
/*
* Update Api for mysql 
*/

function updateInfo($infoId){
	if (!isset($_SESSION['spa'])) { 
		//echo $_SESSION['spa'] ;
		return;
	}
	$postdata = file_get_contents("php://input");
	$request = json_decode($postdata, true);
	//print_r ($request); //turn this on will effect the success callback of $http with Yes return
	// echo $request['inv_refer']; //turn this on will effect the success callback of $http with Yes return
	$values = implode("', '", array_values($request));
	$data = '';
	foreach ($request as $key => $value) {
	 $data = $data . $key . "=:" .$key . ", ";
	 }
	 $data = rtrim($data, ', ');
	//echo $data; //turn this on will effect the success callback of $http with Yes return
		$sql = "UPDATE $infoId SET $data WHERE id =" . $request['id'];
	//echo $sql; //turn this on will effect the success callback of $http with Yes return
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
		echo $e->getMessage(); 
	}
}

/*
* Create Api for mysql 
*/
function deleteInfo ($infoId,$did) {
	if (!isset($_SESSION['spa'])) { 
		//echo $_SESSION['spa'] ;
		return;
	}

	$sql = "DELETE from $infoId where id = '$did'";
	try {
		$db = getDB();
		$stmt = $db->query("SET names utf8;");  
		$stmt = $db->query($sql);  
		$db = null;
	} catch(PDOException $e) {		

	}
}

?>
<?php 
  session_start();
  // phpinfo();
  if (!isset($_SESSION['spa'])) { 
      //echo $_SERVER['REQUEST_URI'] ;
      if($_SERVER['REQUEST_URI'] !== '/login'){
        header('Location: /login');
      } 
  }
?>

<!DOCTYPE html>
<html lang="en" ng-app="myApp">

<head>
    <base href="/">
    <meta charset="utf-8">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="public/images/favicon.ico">
    <title>{{pageTitle}}</title>
    <!-- CSS files -->
    <link href="public/css/bootstrap.min.css" rel="stylesheet">
    <link href="public/css/xeditable.css" rel="stylesheet">
    <link href="public/css/angular-chart.min.css" rel="stylesheet">

    <!-- should chage to invoice.css -->
    <link href="public/css/print.css?v=2.01" rel="stylesheet">

    <?php
$version = 3.1;
echo "<script>var version = $version </script>";
echo "<link href='public/css/app.css?v=$version' rel='stylesheet'>
    <link href='public/css/appPrint.css?v=$version' rel='stylesheet'>
    <link rel='stylesheet' href='/public/css/login.css?v=$version'>"
?>

    <!-- Java Script -->
    <script src="public/js/jquery.min.js"></script>
    <script src="public/js/angular.min.js"></script>
    <script src="public/js/xeditable.js"></script>
    <script src="public/js/angular-animate.min.js"></script>
    <script src="public/js/ui-bootstrap-tpls-0.14.3.min.js"></script>
    <script src="public/js/ui-router-min.js"></script>
    <script src="public/js/spin.min.js"></script>
    <script src="public/js/angular-spinner.js"></script>
    <script src="public/js/Chart.min.js"></script>
    <script src="public/js/angular-chart.js"></script>
</head>



<body>
    <div class "container-fluid">
        <div ui-view="header"></div>
        <div ui-view="myView"></div> <!-- This is for sigle wiew without child -->
        <!-- multiview -->
        <!-- There is a ui-view after header.html for child view. -->
    </div>

    <!--app version change here-->
    <?php
echo '<script src="application/appScript/services.js?v=' . $version . '"></script>' .
    '<script src="app.js?v=' . $version . '"></script>' .
    '<script src="application/appScript/filters.js?v=' . $version . '"></script>' .

    '<script src="application/appScript/directives.js?v=' . $version . '"></script>' .

    '<script src="application/appScript/controllers/Ctrl_InfoList.js?v=' . $version . '"></script>' .

    '<script src="application/appScript/controllers/Ctrl_Spa_Schedule.js?v=' . $version . '"></script>' .
    '<script src="application/appScript/controllers/Ctrl_Spa_Booking.js?v=' . $version . '"></script>' .
    '<script src="application/appScript/controllers/Ctrl_Spa_Report.js?v=' . $version . '"></script>' .
    '<script src="application/appScript/controllers/Ctrl_Login.js?v=' . $version . '"></script>'
; ?>
</body>

</html>
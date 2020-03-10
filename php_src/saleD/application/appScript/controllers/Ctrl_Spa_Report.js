'use strict';
appControllers.controller('reportSpaCtrl', [ '$scope', '$http', '$stateParams','$filter','$location', '$rootScope'
,function ($scope, $http, $stateParams,$filter,$location,$rootScope) {
$rootScope.pageTitle = 'Spa Report';
$scope.reportPeroid = 'Daily';
$scope.clearReport=function(){
  $scope.spa_commission_monthly = [];
  $scope.spa_feedback_monthly = [];
  $scope.spa_menu_monthly = [];
  $scope.spa_sale_monthlyVAT= [];
  $scope.spa_customer_monthly = [];
  $scope.spa_sale_monthly= [];
  $scope.spa_booking_commis_monthly = [];
  $scope.spa_transport_monthly = [];
  $scope.spa_saleProduct_monthly = [];
  $scope.spa_saleTour = [];
  $scope.spa_saleTreatment = [];
}

$scope.getReport = function(dateReport, reportPeroid){
  switch(reportPeroid){
    case 'Monthly':
      $scope.clearReport();
      var date = Date.parse(dateReport);
      var reportdate = $filter('date')(date,'MMyyyy');
      $http.get('api/getInfo/spa_sale_monthly/'+reportdate+'/0'). 
        success(function(data){
        $scope.spa_sale_monthly= data;
      });
      $http.get('api/getInfo/spa_sale_monthly/'+reportdate+'/1'). 
        success(function(data){
        $scope.spa_sale_monthlyVAT= data;
      });

      $http.get('api/getInfo/spa_customer_monthly/'+reportdate). // 
        success(function(data){
        $scope.spa_customer_monthly = data;
      });

      $http.get('api/getInfo/spa_menu_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_menu_monthly = data;
      });

      $http.get('api/getInfo/spa_feedback_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_feedback_monthly = data;
        console.log(data);
      })

      $http.get('api/getInfo/spa_comission_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_commission_monthly = data;
        console.log(data);
      })   
      $http.get('api/getInfo/spa_booking_commis_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_booking_commis_monthly = data;
        console.log(data);
      }); 
      $http.get('api/getInfo/spa_transport_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_transport_monthly = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_saleProduct_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_saleProduct_monthly = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_saleTour_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_saleTour = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_saleTreatment_monthly/'+reportdate). 
        success(function(data){
        $scope.spa_saleTreatment = data;
        //console.log(data);
      });
    break;
    case 'Daily':
      $scope.clearReport();
      var date = Date.parse(dateReport);
      var reportdate = $filter('date')(date,'ddMMyyyy');
      console.log(reportdate);
      $http.get('api/getInfo/spa_sale_daily/'+reportdate+'/0'). 
        success(function(data){
        $scope.spa_sale_monthly= data;
      });
      $http.get('api/getInfo/spa_sale_daily/'+reportdate+'/1'). 
        success(function(data){
        $scope.spa_sale_monthlyVAT= data;
      });
      $http.get('api/getInfo/spa_customer_daily/'+reportdate). // 
        success(function(data){
        $scope.spa_customer_monthly = data;
      });

      $http.get('api/getInfo/spa_menu_daily/'+reportdate). 
        success(function(data){
        $scope.spa_menu_monthly = data;
      });

      $http.get('api/getInfo/spa_feedback_daily/'+reportdate). 
        success(function(data){
        $scope.spa_feedback_monthly = data;
        //console.log(data);
      });

      $http.get('api/getInfo/spa_comission_daily/'+reportdate). 
        success(function(data){
        $scope.spa_commission_monthly = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_booking_commis_daily/'+reportdate). 
        success(function(data){
        $scope.spa_booking_commis_monthly = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_transport_daily/'+reportdate). 
        success(function(data){
        $scope.spa_transport_monthly = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_saleProduct_daily/'+reportdate). 
        success(function(data){
        $scope.spa_saleProduct_monthly = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_saleTour_daily/'+reportdate). 
        success(function(data){
        $scope.spa_saleTour = data;
        //console.log(data);
      });
      $http.get('api/getInfo/spa_saleTreatment_daily/'+reportdate). 
        success(function(data){
        $scope.spa_saleTreatment = data;
        //console.log(data);
      });

    break;
    case 'Anualy':
      break;
    default:

  }
 
}
  //console.log(DataRe);


}]);
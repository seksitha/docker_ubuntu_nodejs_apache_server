'use strict';
appControllers.controller('spaScheduleCtrl', ['$scope', '$http', '$state', '$stateParams', '$location','$rootScope','$filter','$timeout'
,function ($scope, $http,$state, $stateParams, $location, $rootScope, $filter, $timeout){
  
  $rootScope.pageTitle = 'Treatment Schedule';

  // $http.post('api/login',{username:'sitha', pass:12345}).then(function(re){
  //   //alert(re.data);
  // });
  //console.log(DataRe);
  // $http.jsonp('http://finance.yahoo.com/webservice/v1/symbols/khr=x,thb=x,jpy=x,%20cny=x,eur=x/quote?format=json&callback=JSON_CALLBACK'). // get employee to use in combo box
  //   success(function(data){
  //   console.log(data);
  //   $scope.exchangeRate = []; // get the format array from table then update table acording to Yahoo exchange rate

  //   // $scope.exchangeRate = { 'khmer': 1, 'thai' : 1, 'japan' :1, 'chines':1, 'euro':1};
  //   var i = 0;
  //   for(var index in $scope.exchangeRate){
  //     $scope.exchangeRate[index] = (data.list.resources[i].resource.fields.price);
  //     ++i;
  //   }
  //   console.log($scope.exchangeRate.euro);
    // angular.forEach(data.list.resources,function(value,key){
    //   $scope.exchangeRate.push(data.list.resources[key].resource.fields);
    // });
    // console.log($scope.exchangeRate[0].price);

  // });
  // $http.get('http://175.100.29.25:88/api/getInfo/info_employee',{timeout:2000}).success(function(response){
  //   console.log(response);
  //   window.open('http://175.100.29.25:88')
  // }).error(function(error,status){
  //   console.log(status)
  // });


  $http.get('api/getCombo/info_employee'). // get employee to use in combo box
  success(function(data){
    $scope.employees = data;
    //console.log ($scope.employees);
  });
  $http.get('api/getCombo/info_product_spa'). // get product to use in combo box.
    success(function(data){
    $scope.products = data;
  });
  $http.get('api/getInfo/spa_schedule_list').then(function(re){
    $scope.activeSchedules = re.data;    
    $scope.activeSchedule = JSON.parse(JSON.stringify(re.data));
  });
  $http.get('api/getInfo/spa_schedule_detail').then(function(response){
    $scope.details = response.data;
    //console.log($scope.details);
  });
 
  $scope.dataFilter = function(date, activeSchedules){
    console.log(activeSchedules[0].date_treatment);
    if (date != ''){
      var datee = date + ' 00:00:00'
      var search = $filter('filter')(activeSchedules,{date_treatment: datee},true);
      if(search.length > 0){
        $scope.activeSchedule = search;
        console.log(search);
      }else{
        $scope.activeSchedule = []
        alert('There is no booking for ' + date);
      }
    }
  }

  $scope.clearFilter = function(activeSchedules){
    $scope.activeSchedule = JSON.parse(JSON.stringify(activeSchedules));
  }

  $scope.mouseOver = function(index, details){
    $scope.sliceDetails = $filter('filter')(details, {id:index},true);
  }
  $scope.mouseLeave = function(){
    $scope.sliceDetails = [];
  }
  $scope.dateConv = function (d){
    return Date.parse(d);
  };
  $scope.comboId = function(input, key) {
    //console.log(input);
    var selected = $filter('filter')(input, {id: parseInt(key)});
    return (key && selected.length) ? selected[0].name : '';
  }

}]); 
'use strict';
appControllers.controller('bookingSpaCtrl', [ '$scope', '$http', '$timeout','$filter','$location', 'DataApi','$rootScope','$stateParams','$q','usSpinnerService','DataRe','$window','routeName'
  ,function ($scope, $http, $timeout,$filter,$location, DataApi,$rootScope,$stateParams,$q,usSpinnerService,DataRe,$window,routeName) {
  $scope.maxSize = 1; // this will be interval in pagination //assing to ngModel
  $scope.itemPerpage = 1;
  $scope.filterStart = 0;
  $scope.bind = 100;
  $scope.waitLoad = true;
  $scope.noteKHR = 0;
  $scope.noteTHB = 0;
  $scope.noteJPY = 0;
  $scope.noteCHY = 0;
  $scope.noteEUR = 0;
  var url = routeName;
 
  $scope.checkRoute = function(){
    switch(url){
    case 'Spa booking':
      $scope.formName = 'Spa booking';
      break;
    case 'Spa invoicing':
      $scope.formName = 'Spa invoicing';
      break;
    default:
    }
    $rootScope.pageTitle = $scope.formName;
  }();

  var getTodayUrl = 'api/getInfo/sale_spa';
  var getSingleMainUrl = 'api/getInfo/single/sale_spa/';
  var updateMain = 'api/updateInfo/sale_spa'
  var insertMainApi = 'api/addInfo/sale_spa'
  var getLastInfoApi = 'api/getInfo/lastInfo/sale_spa'

  var getRecordChildUrl = 'api/getRecord/sale_comis_thera/';
  var updateChildApi = 'api/updateInfo/sale_comis_thera';
  var getLastIdChildApi = 'api/getLastId/sale_comis_thera';
  var insertChildApi = 'api/addInfo/sale_comis_thera';
  
  var getRecordSubUrl = 'api/getRecord/sale_detail_spa/';
  var getLastIdDetailApi = 'api/getLastId/sale_detail_spa';
  var insertDetailApi = 'api/addInfo/sale_detail_spa';
  var updateDetailApi = 'api/updateInfo/sale_detail_spa';

  var getRecordChild2Url = 'api/getRecord/sale_spa_feedback/';
  var updateChildApi2 = 'api/updateInfo/sale_spa_feedback';
  //console.log(DataRe);
  
  $scope.nationality = ['Khmer', 'Japanese', 'Chinese', 'Korean', 'European','Other'];
  $scope.gender = ['Male', 'Female'];
  $scope.types = ['Detox', 'Relax', 'Power up', 'Warming', 'Cooling']
  $scope.source = ['Online', 'Walkin', 'OMS']
  /***************************************************************************************************************
   *Get the whole data for view /
   ***************************************************************************************************************/

  $scope.employees = DataRe[0].data;
  $scope.products = DataRe[1].data;
  $scope.main = DataRe[2].data;
  $scope.saleDetails = DataRe[3].data;
  $scope.commissionss = DataRe[4].data;
  $scope.feedbacks = DataRe[5].data;
  $scope.bigTotalItems = $scope.main.length;
  $http.get('api/getInfo/info_exchange_rate').then(function(re){
    $scope.exchangeRate = re.data;
    console.log(re.data)
    $http.jsonp('http://finance.yahoo.com/webservice/v1/symbols/khr=x,thb=x,jpy=x,%20cny=x,usd=x/quote?format=json&callback=JSON_CALLBACK')
    .then(function(re){
      var rate = [1,1.05,1.05,1.05,1]
      angular.forEach(re.data.list.resources,function(value,key){
        $scope.exchangeRate[key].rate = (re.data.list.resources[key].resource.fields.price * rate[key]);
        $http.post('api/updateInfo/info_exchange_rate',$scope.exchangeRate[key])
      });
    });
  });
 // get employee to use in combo box

  // angular.forEach(Currency.data.list.resources,function(value,key){
  //   $scope.exchangeRate[key].rate = (Currency.data.list.resources[key].resource.fields.price);
  // });


 /***************************************************************************************************************
   *slice data for navigation / put it up here because if we put after load it will show undifine
   ***************************************************************************************************************/

  $scope.dataPaging = function(page, main){
    //$scope.spinner = true;
      //console.log(page);
      $scope.sale = main[page - 1];
      $scope.saleDetail = $filter('filter')($scope.saleDetails,{'main_id':parseInt(main[page-1].id)},true);
      $scope.commissions = $filter('filter')($scope.commissionss,{'main_id':parseInt(main[page-1].id)},true);
      $scope.feedback = $filter('filter')($scope.feedbacks,{'main_id':parseInt(main[page-1].id)},true);
      $scope.disableAddFeed = $scope.feedback.length;
      $scope.bigCurrentPage = page;
      //$scope.sale = main[page - 1];
      // console.log($scope.sale);
  }
 /***************************************************************************************************************
 *Initial Data for Page load/
 ***************************************************************************************************************/
  //console.log($stateParams);
  if($stateParams.param > 0){

    var search = $filter('filter')($scope.main,{'id':parseInt($stateParams.param)},true);// search array id by pageparam
    var page = $scope.main.indexOf(search[0])+1; // get array possition of its elememnt 'array.indexof(elemt, startfrom)'
    $scope.bigCurrentPage = page;
    $scope.dataPaging(page, $scope.main);
  }else{
    $scope.bigCurrentPage = $scope.main.length;
    $scope.dataPaging($scope.main.length, $scope.main);

  }

  $scope.newRow = function(pageItems,main){
    DataApi.addNewBooking(insertMainApi, getLastInfoApi, function(data){
      $scope.sale = data;
      main.push(data);
      $scope.bigTotalItems = main.length;
      $scope.bigCurrentPage = main.length;
      $scope.dataPaging(main.length, main);
    })
  }
 /***************************************************************************************************************
   *update or Change sale information sale_spa table /
   ***************************************************************************************************************/
  $scope.updateSale = function(param,employees){ // main api
    //console.log(param);
    if(typeof(param.book_by)==='string'){ // use because type ahead directive return string
      var staff = $filter('filter')(employees,{name: param.book_by},true);
      param.book_by = staff[0].id; // convert to number for mysql
      //param.cashier = staff[0].id;
    } else if(typeof(param.cashier)==='string'){ // use because type ahead directive return string
      var staff = $filter('filter')(employees,{name: param.cashier},true);
      param.cashier = staff[0].id;
      //param.book_by = staff[0].id;
    }
    console.log(param.date_treatment);
    param.date_treatment = $filter('date')(param.date_treatment,'yyyy-MM-dd')
    param.date_bill = $filter('date')(param.date_bill,'yyyy-MM-dd')
    param.date_booked = $filter('date')(param.date_booked,'yyyy-MM-dd')
    //console.log(param.date_treatment);
    $http.post(updateMain, param).
      then(function(data){
      $scope.setDateBook();
      console.log(param)
    });
  }
  

  $scope.setDateBook = function(){
    var date = Date.parse(Date());
    var dateBook = new Date($filter('date')(date,'yyyy-MM-dd'));
    //console.log(dateBook);
    ($scope.sale.date_booked == null || $scope.sale.date_booked ==='0000-00-00 00:00:00') || $scope.sale.date_booked ==='' ? $scope.sale.date_booked = dateBook : '';
  }
  /*
  *After Cashier iput the name, its name will not be able to change for future reference.
  */
  $scope.setInvoiceNum = function(saleId, invRefer,cashier,saleData,employees){
    
    if(cashier !==null){
      if(typeof(cashier) =='string'){
        var staff = parseInt($filter('filter')(employees,{name: cashier},true)[0].id);
      }
      console.log(staff);
      var today = $filter('date')($scope.dateConv(Date()),'yyyyMM');
      var todayDate = $filter('date')($scope.dateConv(Date()),'yyyy-MM-dd');
      var invoiceNum = '';

      $http.get('api/checkInvoice/sale_spa/' + today).then(function(response){
        if(response.data[0].lastNum >= 1 && invRefer === null && cashier !== 0){ // if the respond is greater 0r = 1 will increment
          var increment = parseInt(response.data[0].lastNum);
          increment = increment + 1;
          var str = "" + increment;
          var pad = "0000";
          var ans = pad.substring(0, pad.length - str.length) + str;
          invoiceNum = today+'-'+ ans;
          $http.post(updateMain,{id:saleId, inv_num: increment, inv_refer:invoiceNum, date_bill: todayDate, 'cashier': parseInt(staff)}).then(function(secRe){
            $scope.sale.inv_refer = invoiceNum;
            $scope.sale.inv_num = increment;
            $scope.sale.date_bill = todayDate;
          });

        }else if (response.data[0].lastNum === 0 && invRefer == null && cashier !==0){ // if the respond is 0 will start from one
          invoiceNum = today+'-'+'0001';
          $http.post(updateMain,{id: saleId, inv_num: 1 , inv_refer:invoiceNum, date_bill:todayDate, cashier: staff}).then(function(secRe){
            $scope.sale.inv_refer = invoiceNum;
            $scope.sale.date_bill = todayDate;
          }); 
        }
      });
    }
  }
  $scope.deleteSale = function(singleMain){
    if($window.confirm('Click OK if you are sure about this delete')){
      $http.delete('api/deleteInfo/sale_spa/' + singleMain.id).then(function(response){
        var url = 'spa_booking/booking/' + (($scope.main[$scope.main.indexOf(singleMain) -1 ]).id);
        $scope.main.splice($scope.main.indexOf(singleMain),1)
        console.log(url);
        window.location = url;
      });
    }
  }
  /***************************************************************************************************************
   *input product by bacode or manual input / add to sale_detail_spa
   ***************************************************************************************************************/
  $scope.addProduct = function(saleDetails, saleDetail, sale_id, products, param1){
    DataApi.addProduct(saleDetails,saleDetail, sale_id, products, param1, updateDetailApi, getLastIdDetailApi, insertDetailApi)
      $scope.barcode = null;

  }  

  $scope.updateDetail = function(data, products,index){
    var result = $filter('getById')(products, data.product);
    //data.price = result.price;
    $http.post(updateDetailApi,data).
    then(function(data){
      //$scope.saleDetail[index].price = result.price;
    });
  }

  $scope.$watch('sub',function(value,old){
    if(value !== 'undefined' && $scope.sale.isVAT === 0){
      $scope.sale.total = $scope.sub;
      $scope.updateSale($scope.sale,$scope.employees);
    }else if( value !== 'undefined' && $scope.sale.isVAT === 1){ 
      $scope.sale.total = value * 1.1;
      $scope.updateSale($scope.sale,$scope.employees);
    }
  });

  $scope.deleteDetail = function(index,saleDetail,singleSaleDetail){
    if($window.confirm('are you sure for this delete?')){ 
      console.log(singleSaleDetail.id);
      $http.delete('api/deleteInfo/sale_detail_spa/' + singleSaleDetail.id)
      .then(function(){
        saleDetail.splice(index,1);
        $scope.saleDetails.splice($scope.saleDetails.indexOf(singleSaleDetail),1)
        console.log(saleDetail);
      },function(er){
        alert('lost connection can not delete try again');
      })
    }
  }

  
  $scope.addCommission = function(data, saleId, employees, param1, param2){
    DataApi.addGift(data, saleId, employees, param1, param2, function(status,reply){
      if(status === 200){
        $scope.commissions[reply].duration = param2;
      }else{$scope.commissions.push(reply);}
      $scope.therapist = $scope.duration = null;
    });
  }
  $scope.updateComis = function(singleComis){
        $http.post(updateChildApi,singleComis).then(function(){
      //$scope.feedback[index] = singleFeed;
    });
  }
  $scope.deleteComis = function(index,commissions,singleComis){
    if($window.confirm('are you sure for this delete?')){ 
      $http.delete('api/deleteInfo/sale_comis_thera/' + singleComis.id)
      .then(function(){
        commissions.splice(index,1);
        $scope.commissionss.splice($scope.commissionss.indexOf(singleComis),1)
      },function(er){
        alert('lost connection can not delete try again');
      })
    }
  }

  $scope.addFeedback = function(saleid){
    var feeds = {main_id:saleid,feedback:'Receptionist'}
    var feeds1 = {main_id:saleid,feedback:'Ambience'}
    var feeds2 = {main_id:saleid,feedback:'Therapist'}
    var feeds3 = {main_id:saleid,feedback:'Therapy'}

    $http.post('api/addInfo/sale_spa_feedback',feeds);
    $http.post('api/addInfo/sale_spa_feedback',feeds1);
    $http.post('api/addInfo/sale_spa_feedback',feeds2);
    $http.post('api/addInfo/sale_spa_feedback',feeds3).then(function(){
      $http.get('api/getRecord/sale_spa_feedback/'+saleid).then(function(response){
      $scope.feedbacks  = $scope.feedbacks.concat(response.data);
      $scope.feedback = response.data;
      console.log($scope.feedbacks);
      $scope.disableAddFeed = 4;
      });
    }); 
  }
  
  $scope.updateFeed =function(singleFeed){
    //console.log(data);
    $http.post(updateChildApi2,singleFeed).then(function(){
      //$scope.feedback[index] = singleFeed;
    });
  }
  $scope.updateVAT = function(isVat,sub){
        console.log(isVat);
    if(isVat === 1 ){
      //alert($scope.sub);
      $scope.sale.total = sub * 1.1;
      $scope.updateSale($scope.sale,$scope.employees);
    }else{
      //console.log($scope.sub);
      $scope.sale.total = sub;
      $scope.updateSale($scope.sale,$scope.employees);
    }
  }

  $scope.print = function(invoiceId){
  
      window.open('invoice_spa/'+invoiceId,'_blank');

  };
  $scope.dateConv = function (d){
    return Date.parse(d);
  };
  $scope.combo = function(input, key) {
    var selected = $filter('filter')(input, {name: key},true);
    return (key && selected.length) ? selected[0].id : '';
  }
  $scope.comboId = function(input, key) {
    //console.log(input);
    var selected = $filter('filter')(input, {id: parseInt(key)},true);
    return (key && selected.length) ? selected[0].name : '';
  }

}]);
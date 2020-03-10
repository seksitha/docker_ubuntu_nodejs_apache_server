
appControllers.controller('invoiceCtrl', [ '$scope', '$http', '$stateParams','$filter','$location', '$rootScope','DataRe'
,function ($scope, $http, $stateParams,$filter,$location,$rootScope,DataRe) {
  $rootScope.pageTitle = 'Spa Invoice/Receipt';
  //console.log(DataRe);
  $scope.products = DataRe[0].data;
  $scope.sale = DataRe[1].data[0];
  console.log($scope.sale)
  $scope.saleDetail = DataRe[2].data; 

  $scope.combo = function(input, key) {
      selected = $filter('filter')(input, {id: parseInt(key)});
      return (key && selected.length) ? selected[0].name : 'NULL';
    }

  $scope.$watch('sub',function(value){
    if($scope.sub > 0){
       //window.print();
    }
  });
  $scope.dateConv = function (d){
    return Date.parse(d);
  };
}]);
myApp.controller('downloadLoadReportCtrl', ['$scope', '$http', '$location', '$timeout', '$filter', '$q', function($scope, $http, $location, $timeout, $filter, $q) {
    $scope.shop = 'oms_sale';
    $scope.reportType = 'customer'
    $scope.dateStart = new Date();
    $scope.dateEnd = new Date();
    $scope.showSpiner = false;
    var defer = $q.defer();

    defer.promise.then(function(data) {
        var showSpiner = false;
        var theclick = 
        theclick = undefined;
    }).finally()

    $scope.downloadReport = function() {
        $scope.showSpiner = true;
        $scope.start = $filter('date')($scope.dateStart, 'yyyy-MM-dd')
        $scope.end = $filter('date')($scope.dateEnd, 'yyyy-MM-dd')
        $http.post('api/download_report', { shop: $scope.shop, report_type: $scope.reportType, date_start: $scope.start, date_end: $scope.end }).then(function(re) {
            if(re.data.length > 0){
            $scope.data = re.data;
            $scope.header = Object.keys(re.data[0])
            angular.element('.download')[0].click();
 
            }else{ 
                alert('No sale report in this peroid!');
            }
            $scope.showSpiner = false;
        })
    }

    $scope.getHeader = function(){
        console.log($scope.header);
        return $scope.header;
    }

}]);
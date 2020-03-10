appControllers.controller('reportCtrl', ['$scope', '$http', '$stateParams', '$filter', '$location', 'DataApi', '$timeout','DataRe', function($scope, $http, $stateParams, $filter, $location, DataApi, $timeout, DataRe) {
    $scope.reportPeroid = 'daily';

    $scope.getReport = function(start, end) {
        if ($scope.reportPeroid == 'peroid') {
            $scope.omsSales = $scope.krungSales = [];
            //var date = Date.parse(dateReport);
            var startDate = $filter('date')(start, 'yyyy-MM-dd');
            var endDate = $filter('date')(end, 'yyyy-MM-dd');
            $http.get('api/getInfo/sale_report_peroid_oms/' + startDate + '/' + endDate). // get product to use in combo box.
            success(function(data) {
                $scope.omsSales = data;
            });
            $http.get('api/getInfo/sale_report_peroid_krung/' + startDate + '/' + endDate). // get product to use in combo box.
            success(function(data) {
                $scope.krungSales = data;
                //console.log($scope.krungSales);
            });
        } else {
            $scope.omsSales = $scope.krungSales = [];
            //var date = Date.parse(dateReport);
            var reportdate = $filter('date')(start, 'MMyyyy');
            $http.get('api/getInfo/sale_report/oms_sale/' + reportdate). // get product to use in combo box.
            success(function(data) {
                $scope.omsSales = data;
            });
            $http.get('api/getInfo/sale_report/krung_sale/' + reportdate). // get product to use in combo box.
            success(function(data) {
                $scope.krungSales = data;
                //console.log($scope.krungSales);
            });
        }
    }

    DataApi.chart('api/getInfo/oms_anual_sale').then(function(re) {
        //var re = [[[0,0,0,2778.88,11355.975,12155.35,23365.99,16208,10299,11650.95,21047.12],[23445.25,20891.95,13502.83,9675,11946.95,9167.11,17981.58,15948.01,11650.4,12810.7,17409.24],[16220.63,12881.05,12765.899,0,0,0,0,0,0,0,0]],["Jan","Feb","Mar","Apr","May","Jun","Aug","Sep","Oct","Nov","Dec"],[2014,2015,2016]]
        $scope.dataOmsAnualSale = re[0];
        $scope.labelOmsAnualSale = re[1];
        $scope.serieOmsAnualSale = re[2];
    });
    DataApi.chart('api/getInfo/estimate_month_compare').then(function(data) {
        $scope.labelSaleCompareBetweenYear = data[1];
        $scope.dataSaleCompareBetweenYear = data[0];
        $scope.serieSaleCompareBetweenYear = data[2];
        //console.log(JSON.stringify(data))
    });
    DataApi.chart('api/getInfo/estimate_this_year_trend').then(function(data) {
        $scope.dataThisYearTrend = data[0];
        $scope.labelThisYearTrend = data[1];
        $scope.serieThisYearTrend = data[2];
        //console.log(data[0])
        //console.log(JSON.stringify(data))
    });
    DataApi.chart('api/getInfo/estimate_last_year_trend').then(function(data) {
        $scope.lastYearTrendData = data[0];
        $scope.lastYearTrendLabel = data[1];
        $scope.lastYearTrendSeries = data[2];
        console.log(JSON.stringify(data))
    });
    $http.get('api/getInfo/sale_category_this_year_last_month').then(function(re) {
        // $scope.labels3 = Object.getOwnPropertyNames(re.data[0])
        $scope.labelSaleCategory = [];

        for (i = 0; i < re.data.length; i++) {
            $scope.labelSaleCategory.push(re.data[i].category);
        }
        //console.log($scope.labels3)

        $scope.dataSaleCategory = [];
        var data2 = [];
        for (var i = 0; i < re.data.length; i++) {
            data2.push(Object.keys(re.data[i]).map(function(val, key) {
                return re.data[i][val]
            }));
        }
        for (i = 0; i < data2.length; i++) {
            $scope.dataSaleCategory.push(data2[i][1]);
        }
        //console.log(data2)
        console.log($scope.dataSaleCategory)
    });
    
}]);
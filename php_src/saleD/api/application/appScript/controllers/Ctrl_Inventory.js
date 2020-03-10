appControllers.controller('saleInventoryCtrl', ['$scope', '$http', '$stateParams', '$filter', '$location', '$rootScope', 'DataRe', function($scope, $http, $stateParams, $filter, $location, $rootScope, DataRe) {
    $rootScope.pageTitle = 'Inventory Report';
    $scope.orderByField = 'id';
    $scope.reverseSort = false;

    $scope.showField = function(feild) {
        //console.log(feild);
        $scope.orderByField = feild;
        $scope.reverseSort = !$scope.reverseSort;

    };

    //get the date from mysql yyyy-MM-dd HH:MM:SS and convert to only yyyy-MM-dd
    $scope.parseDate = function(dateParam) {
        var theDate = Date.parse(dateParam);
        return $filter('date')(theDate, 'yyyy-MM-dd');
    }
    $scope.datas = DataRe.data;


    $scope.keyCorrectStock = 0;
    // $scope.field = "OL"
    // $scope.mainId = 762
    // $scope.passWord = "phen789"

    $scope.correctStock = function(mainId, field, passWord) {
        if (passWord === 'phen789') {
            function filter(prop) {
                return function(item) {
                    return item[prop] != 0;
                }
            }
            var datas = $filter('filter')($scope.datas, filter(field), true)
            console.log(datas);
            for (key in datas) {
                $http.post('api/addInfo/inventory_product_out_detail', { main_id: mainId, product: datas[key].id, qty: datas[key][field], number: key }).then(function() {
                    //console.log('ok');
                    ++$scope.keyCorrectStock;
                    ($scope.keyCorrectStock == datas.length) ? alert('You are successfully correcting your stock man!!!'): '';
                    console.log(key, datas.length);
                }, function(re) {
                    alert('error correct stock')
                });
            }
        } else {
            alert('password is not correct man!!!')
        }
    }
    $scope.copyStock = function(fromId, toId) {
        if (fromId && toId) {
            $http.get('api/merge/from_delivery/' + fromId + '/' + toId).then(function() {
                alert('you successfully copy the records');
            })
        }else{
            alert('Please, input id for copy!')
        }
    }
    $scope.getInv = function(dateStart, dateEnd) {
        $scope.data = [];
        $http.get('api/getInfo/last_start_stock').then(function(re) {
            var start = $filter('date')(Date.parse(dateStart), 'yyyy-MM-dd');
            var now = $filter('date')(Date.parse(dateEnd), 'yyyy-MM-dd')
            $http.get('api/getInfo/sale_inventory/' + start + '/' + now). // get product to use in combo box.
            then(function(re) {
                $scope.datas = re.data;
            });
        })
    }

    $http.get('api/getInfo/last_start_stock').then(function(re) {
        $scope.lastStartStock = Date.parse(re.data[0].date);
    });

    $scope.updatePeroid = function(start, end) {
        $http.post('api/updateInfo/peroid_inventory', { id: 1, date_start: start, date_end: end }).success(function() {

        });
    }
    $scope.hideSaleD = function(numColum) {
        // n+6 select all except the first 22
        var selector = '#inventory tr td:nth-child(n+' + numColum + '),#inventory tr th:nth-child(n+' + numColum + ')';
        angular.element(selector).toggleClass('hide');
    }
    $scope.hideShop = function(numColum, numColum2) {
        // n+5 select all except the first 5
        var selector = '#inventory tr td:nth-child(-n+' + numColum + '),#inventory tr th:nth-child(-n+' + numColum + ')';
        var selector2 = '#inventory tr td:nth-child(-n+' + numColum2 + '),#inventory tr th:nth-child(-n+' + numColum2 + ')';
        angular.element(selector).toggleClass('hide');
        angular.element(selector2).toggleClass('hide');
    }

}]);
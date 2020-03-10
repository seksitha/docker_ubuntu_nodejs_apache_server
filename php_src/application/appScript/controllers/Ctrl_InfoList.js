'use strict';
var appControllers = angular.module('appControllers', []);
/*
 *@controler responsible for Produc tList from database
 *
 *
 */
appControllers.controller('infoListCtrl', ['$scope', '$http', '$state', '$stateParams', '$location', '$rootScope', 'infoData', '$filter', function($scope, $http, $state, $stateParams, $location, $rootScope, infoData, $filter) {
    var url = $stateParams.infoId;
    // console.log(infoData)
    console.log($scope.tableList); // this scope is from main router's controller.
    var title = $filter('filter')($scope.tableList, { code: $stateParams.infoId }, true);
    
    $scope.checkRoute = function() {
        if ($stateParams.infoId) {
            switch ($stateParams.infoId) {

                case 'spa_info_product':
                    $scope.formName = 'Spa Menu' + " List";
                    break;
                case 'spa_info_employee':
                    $scope.formName = 'Emoloyee' + " List";
                    break;
                case 'spa_sale_customer':
                    $scope.formName = 'Customer' + " List";
                    break;
                default:
                    if (title.length > 0) {
                        $scope.formName = title[0].title + " List";
                        $location.path('/info/' + $stateParams.infoId);
                    }

            }
        } else {
            $location.path('/info/spa_info_product');
        }
        $rootScope.pageTitle = $scope.formName;
        $rootScope.spinnerActive = true;
    }();

    $scope.waitLoad = true;
    $scope.showSpinner = true;

    $scope.datas = [];
    var lid = null;
    $scope.maxSize = 10; // this will be interval in pagination
    $scope.bigCurrentPage = 1; //assing to ngModel
    $scope.itemPerpage = 20;
    $scope.bigTotalItems = null;
    $scope.filterStart = 0;

    $scope.setFilterStart = function() { //the alternative of dataPage
        $scope.filterStart = $scope.itemPerpage * ($scope.bigCurrentPage - 1);
    }

    //READ DATA FROM MYSQL\\\\\\

    $scope.datas = infoData[0].data;
    (Object.keys($scope.datas[0]).length <= 10) ? $scope.classLength = Object.keys($scope.datas[0]).length + 2: $scope.classLength = 12;
    $scope.bigTotalItems = Math.round($scope.datas.length); //data leng in table
    $scope.bigCurrentPage = 1; //assing to ngModel


    // CREATE INSERT INTO MYSQL
    $scope.newRow = function() {
        $http.get('api/getLastId/' + url).
        success(function(data) {
            if (lid < data[0].id) {
                lid = data[0].id + 1;
                $scope.bigCurrentPage = 1; // to prevent ng-change fire setFilterStart() in model caus all row appear
                $scope.filterStart = $scope.datas.length;
            } else {
                lid++;
            }
            var feild = Object.getOwnPropertyNames($scope.datas[0]); // Get propety name from productid dynamicly
            //onsole.log(feild);
            $scope.inserted = {};
            $scope.inserted.id = lid;
            for (var i = 1; i < feild.length - 1; i++) { //loop trought the feild of Object and asign field of insert Obj
                $scope.inserted[feild[i]] = '';
            }
            $scope.datas.push($scope.inserted);
            $scope.bigTotalItems = $scope.datas.length; //data leng in table
            $scope.itemPerpage = $scope.bigTotalItems;
        });
    };
    // CREATE CANCEL
    $scope.cancel = function(data, index) {
        console.log(index);
        $scope.datas.splice($scope.filterStart + index, 1);
        console.log(data.id);
        if (lid <= data.id) {
            lid = lid - 1;
        }
    };
    $scope.doneAdd = function() {
        $state.reload();
    };
    // CREATE CONFIRM ADDED
    $scope.addRow = function(data, index) {
        console.log(data)
        $scope.datas.splice($scope.filterStart + index, 1);
        $scope.datas.push(data);
        $http.post('api/addInfo/' + url, data).
        success(function(data, status, headers, config) {
                console.log(data);
            })
            .error(function(data, status) {
                console.log(status);
            });
    };
    //UPDATE DATA TO MYSQL
    $scope.update = function(data) {
            console.log(data);
            $http.post('api/updateInfo/' + url, data).
            success(function(data, status, headers, config) {
                    console.log('functionUpdate');
                    console.log(data);
                })
                .error(function(data, status, headers, config) {
                    console.log(headers);
                });
        }
        //DELETE FROM MYSQL
    $scope.remove = function(index, id) {
        //console.log(index);
        $scope.datas.splice(index, 1);
        $http.delete('api/deleteInfo/' + url + "/" + id).
        success(function(data, status, headers, config) {

        });
    };
}]);

appControllers.controller('collapseCtrl', function($scope) {
    $scope.isCollapsed = 'collapse';
});
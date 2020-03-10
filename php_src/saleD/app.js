'use strict';
var myApp = angular.module('myApp', ['appControllers', 'appServices', 'ui.bootstrap', 'xeditable', 'ui.router', 'ngAnimate', 'angularSpinner', 'chart.js','ngSanitize', 'ngCsv']);

myApp.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', function($stateProvider, $urlRouterProvider, $locationProvider) {
    // application versio
    // console.log(version)
    version = '?v='+version;

    function isLogin($q, $http, $location) {
        var defer = $q.defer();
        $http.post('api/isLogin').then(function(re) {
            defer.resolve(re);
        }, function(re) {

            $location.path('/login')
                // defer.reject(re);
        });
    }

    function loadCurrency($http) {
        //for browser
        //http://finance.yahoo.com/webservice/v1/symbols/khr=x,thb=x,jpy=x,cny=x,eur=x/quote?format=json 
        //return $http.jsonp('http://finance.yahoo.com/webservice/v1/symbols/khr=x,thb=x,jpy=x,cny=x,eur=x/quote?format=json&callback=JSON_CALLBACK') // get employee to use in combo box
    }

    function loadSaleProduct($q, $http, $location, $stateParams, $filter) {
        var defer = $q.defer(),
            peroid = '';
        console.log($stateParams.param);
        ($stateParams.param) ? peroid = $stateParams.param: peroid = $filter('date')(Date.now(), 'MMyy');
        console.log(peroid);
        $http.post('api/isLogin',{}).then(function() {
            $q.all([
                $http.get('api/getInfo/oms_info_employee'),
                $http.get('api/getInfo/info_product'),
                $http.get('api/getInfo/oms_sale/' + peroid),
                $http.get('api/getInfo/shop_detail/oms_sale/' + peroid),
                $http.get('api/getInfo/shop_gift/oms_sale/' + peroid)
            ]).then(function(re) { //date invoice
                //console.log(re);
                defer.resolve(re);
            });

        }, function(re) {
            $location.path('/login');
            //defer.reject(re)
        })
        return defer.promise;
    }

    function loadInfoList($q, $http, $stateParams, $location) {
        var defer = $q.defer();
        $http.post('api/isLogin').then(function() {
            $q.all([
                    $http.get('api/getInfo/' + $stateParams.infoId)
                ])
                .then(function(re) { //date invoice
                    defer.resolve(re);
                });

        }, function(re) {
            $location.path('/login');
            //defer.reject(re)
        })

        return defer.promise;
    }

    function loadInventory($q, $http, $stateParams, $location, $filter) {
        var defer = $q.defer();
        $http.get('api/getInfo/last_start_stock').
        then(function(re) {
            var jnow = new Date()
            //http://stackoverflow.com/questions/1765803/convert-a-mysql-date-to-javascript-date
            var start = $filter('date')(new Date(Date.parse(re.data[0].date.replace('-','/','g'))), 'yyyy-MM-dd');
            //tomorrow.setDate(tomorrow.getDate() + 1)// from stack overflow
            //http://stackoverflow.com/questions/3674539/incrementing-a-date-in-javascript
            var now = $filter('date')((jnow.setDate(jnow.getDate() + 1)), 'yyyy-MM-dd')
            $http.get('api/getInfo/sale_inventory/' + start + '/' + now). // get product to use in combo box.
            then(function(data) {
                defer.resolve(data);
                //console.log(data);
            });
        })
        return defer.promise;
    }

    // at run initial the application
    myApp.run(['$rootScope', 'editableOptions', function($rootScope, editableOptions) {
        editableOptions.theme = 'bs3'; // bootstrap3 theme. Can be also 'bs2', 'default'
        $rootScope.pageTitle = 'home';
        $rootScope.spinnerActive = false;
    }]);

    /*
     * Router for application
     */
    $urlRouterProvider.otherwise('/notFound');
    $urlRouterProvider.when('', '/');
    $stateProvider.

    state('Home', {
        resolve: {
            DataRe: isLogin
        },
        url: '/',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/shop_report.html' + version, controller: 'reportCtrl' },
        }
    }).
    state('notFound', {
        url: '/notFound',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' },
            "myView": { template: '<h3>Page not Found</h3>' }
        }
    }).
    state('login', {
        url: '/login',
        views: {
            "header": { templateUrl: 'application/template/partial/header-login.html' },
            "myView": { templateUrl: 'application/template/login.html' + version, controller: 'loginCtrl' }
        }
    }).
    state('logout', {
        url: '/logout',
        views: {
            "header": { template: '<div></div>' },
            "myView": {
                template: '<div></div>',
                controller: function($location, $http) {
                    $http.get('api/logout').then(function() {
                        $location.path('/login')
                    });
                }
            }
        }
    }).

    state('info', {
        url: '/info/:infoId',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/info_list.html' + version, controller: 'infoListCtrl' }
        },
        resolve: {
            DataRe: loadInfoList
        }
    }).
    state('delivery', {
        url: '/delivery/:param',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/saleD_delivery.html' + version, controller: 'productOutCtrl' }
        }
    }).
    state('sale_inventory', {
        url: '/sale_inventory',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/saleD_inventory.html' + version, controller: 'saleInventoryCtrl' }
        },
        resolve: {
            DataRe: loadInventory
        }
    }).
    state('sale', {
        url: '/sale/:param',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/shop_sale.html' + version, controller: 'saleCtrl' }
        },
        resolve: {
            DataRe: loadSaleProduct
        }
    }).
    state('saleNoParam', {
        url: '/sale',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/shop_sale.html' + version, controller: 'saleCtrl' }
        },
        resolve: {
            DataRe: loadSaleProduct
        }
    }).
    state('guide_commission', {
        url: '/commission',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/shop_commission.html' + version, controller: 'commissionCtrl' }
        },
        resolve: {
            DataRe: isLogin
        }
    }).
    state('report', {
        url: '/report',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/shop_report.html' + version, controller: 'reportCtrl' },
        },
        resolve: {
            DataRe: isLogin
        }
    }).
    state('download_report', {
        url: '/download_reports',
        views: {
            "header": { templateUrl: 'application/template/partial/header.html' + version },
            "myView": { templateUrl: 'application/template/download_report.html' + version, controller: 'downloadLoadReportCtrl' },
        },
        resolve: {
            DataRe: isLogin
        }
    });

    $locationProvider.html5Mode(true);
}]);
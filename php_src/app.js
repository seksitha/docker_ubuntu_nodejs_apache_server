'use strict';
// App declaration
var myApp = angular.module('myApp', ['appControllers', 'appServices', 'ui.bootstrap', 'xeditable', 'ui.router', 'ngAnimate', 'angularSpinner', 'chart.js']);

// App at run time
myApp.run(['$rootScope', 'editableOptions', "$http","DataApi", function($rootScope, editableOptions, $http,DataApi) {
    //console.log(DataApi)
    editableOptions.theme = 'bs3'; // bootstrap3 theme. Can be also 'bs2', 'default'
    $rootScope.pageTitle = 'home';
    $rootScope.spinnerActive = false;
}]);

// App at configuation
myApp.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', function($stateProvider, $urlRouterProvider, $locationProvider) {
    version = '?v=' + version
        //var me = myDataProvider.$get().data()
        //console.log(me);

    function loadBooking($q, $http, $location) {
        var defer = $q.defer();

        //what if the aplication is muti-users require update to latest datas???
        //how do we handle data auto sync, firebase mongoDB???
        $q.all([
            $http.get('api/getInfo/spa_sale_massage'), //date book and invoice
            $http.get('api/getInfo/spa_sale_massage_detail'), //date book and invoice
            $http.get('api/getInfo/spa_info_employee'),
            $http.get('api/getInfo/info_id/spa_info_product'),
            $http.get('api/getInfo/info_id/spa_sale_customer'),
            $http.get('api/getInfo/info_id/spa_info_commissioner'),
            $http.get('api/getInfo/info_id/spa_info_tables'),
            $http.get('api/getInfo/info_id/spa_info_bookmethod'),
            $http.get('api/getInfo/info_id/spa_info_orientation')
        ]).then(function(re) { //date invoice
            defer.resolve(re);
        });
        return defer.promise;
    }

    function loadSchedule($q, $http, $location) {
        var defer = $q.defer();
        $http.get('api/isLogin').then(function() {
            $q.all([
                $http.get('api/getCombo/spa_info_product'),
                $http.get('api/getInfo/spa_schedule_list'),
                $http.get('api/getInfo/spa_schedule_detail')
            ]).then(function(re) { //date invoice
                defer.resolve(re);
            });

        }, function(re) {
            $location.path('/login');
            //defer.reject(re)
        })
        return defer.promise;
    }

    function loadInfoList($q, $http, $stateParams, $location) {
        //console.log('run')
        var defer = $q.defer();
        if ($stateParams.infoId) {

        } else {
            $stateParams.infoId = 'spa_info_product'
        }

        $q.all([$http.get('api/getInfo/info_id/' + $stateParams.infoId)]).then(function(re) { //date invoice
            defer.resolve(re);
        }, function() {
            defer.reject();
        });


        return defer.promise;

    }

    $urlRouterProvider.otherwise('/notFound');
    $urlRouterProvider.when('', '/info');
    $stateProvider.
    state('main.Home', {
        url: '/',
        templateUrl: 'application/template/spa_report.html' + version,
        controller: 'reportSpaCtrl'
            // "myView": { templateUrl: 'application/template/shop_report.html'+ version, controller: 'reportCtrl'}
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
            "header": { templateUrl: 'application/template/partial/header-login.html' + version },
            "myView": { templateUrl: 'application/template/login.html' + version, controller: 'loginCtrl' }
        }
    }).


    /*
     * state or URL of sale and booking
     */
    state('main', { ////start from here 
        abstract: true,
        url: '',
        resolve: {
            dataInit: loadBooking,
            //infoData: loadInfoList,
            routeName: function() {
                console.log();
                return 'Spa booking';
            }
        },
        views: {
            "header": {
                templateUrl: 'application/template/partial/header.html' + version,
                controller: function(dataInit, $scope) {
                    $scope.tableList = dataInit[6].data;
                    $scope.bookingMethod = dataInit[7].data;
                    $scope.cusOrientation = dataInit[8].data;
                }
            }
        }
    }).

    state('main.info', {
        url: '/info/:infoId',
        templateUrl: 'application/template/info_list.html' + version,
        controller: 'infoListCtrl',
        resolve: {
            infoData: loadInfoList
        }
    }).

    state('main.booking', { ////start from here
        url: '/spa_booking/booking/:param',
        templateUrl: 'application/template/spa_booking.html' + version, // can we use view here???
        params: {
            param: { squash: true, value: null }
        },
        controller: 'bookingSpaCtrl',
    }).

    state('main.sale', { ////start from here
        url: '',
        template: "<div ui-view> </div>",
        controller: 'bookingSpaCtrl'
    }).
    state('main.sale.sale_retail', { ////start from here
        url: '/spa_booking/sale_retail/:param',
        templateUrl: 'application/template/spa_sale.html' + version,
        params: {
            param: { squash: true, value: null }
        },
        //controller: 'bookingSpaCtrl'
    }).
    state('main.sale.sale_wholeSale', { ////start from here
        url: '/spa_booking/sale_wholeSale/:param',
        templateUrl: 'application/template/spa_sale.html' + version,
        params: {
            param: { squash: true, value: null }
        },
        //controller: 'bookingSpaCtrl'
    }).
    state('main.sale.sale_backMargin', { ////start from here
        url: '/spa_booking/sale_backMargin/:param',
        templateUrl: 'application/template/spa_sale.html' + version,
        params: {
            param: { squash: true, value: null }
        },
        //controller: 'bookingSpaCtrl'
    }).
    state('main.salePartner', { ////start from here
        url: '/sale_partner',
        templateUrl: 'application/template/spa_sale_partner.html' + version,
        controller: 'salePartner'
    }).

    state('main.logout', {
        url: '/logout',
        templateUrl: '' + version,
        controller: function($location, $http) {
            $http.get('api/logout').then(function() {
                $location.path('/login')
            });
        }

    }).

    state('main.schedule', {
        url: '/schedule_spa',
        templateUrl: 'application/template/spa_schedule.html' + version,
        controller: 'spaScheduleCtrl',
        resolve: {
            DataRe: loadSchedule
        }
    }).

    state('main.reportSpa', {
        url: '/report_spa',
        templateUrl: 'application/template/spa_report.html' + version,
        controller: 'reportSpaCtrl'
    });

    $locationProvider.html5Mode(true);
}]);
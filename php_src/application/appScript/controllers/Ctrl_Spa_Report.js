'use strict';
appControllers.controller('reportSpaCtrl', ['$scope', '$http', '$stateParams', '$filter', '$location', '$rootScope', function($scope, $http, $stateParams, $filter, $location, $rootScope) {
    $http.get('api/isLogin').then(function(re) {}, function() { $location.path('/login') })
    $rootScope.pageTitle = 'Spa Report';
    $scope.reportPeroid = 'Daily';
    $scope.theDate = new Date();
    $scope.clearReport = function() {
        $scope.spa_commission_monthly = [];
        $scope.spa_feedback_monthly = [];
        $scope.spa_menu_monthly = [];
        $scope.spa_sale_monthlyVAT = [];
        $scope.spa_customer_monthly = [];
        $scope.spa_sale_monthly = [];
        $scope.spa_booking_commis_monthly = [];
        $scope.spa_transport_monthly = [];
        $scope.spa_saleProduct_monthly = [];
        $scope.spa_saleTour = [];
        $scope.spa_saleTreatment = [];
    }

    $scope.getReport = function(dateReport, reportPeroid) {

        $scope.clearReport();
        var date = Date.parse(dateReport);
        var reportdate ;
        if(reportPeroid=='Monthly'){
            reportdate = $filter('date')(date, 'MMyy');
        }else if (reportPeroid = 'Daily'){
            reportdate = $filter('date')(date, 'ddMMyy');
        }
        

        $http.get('api/getInfo/' + reportPeroid + '/spa_sale/' + reportdate).
        success(function(data) {
            $scope.spa_sale_monthlyVAT = data;
        });
        $http.get('api/getInfo/' + reportPeroid + '/spa_saleTour/' + reportdate).
        success(function(data) {
            $scope.spa_saleTour = data;
            //console.log(data);
        });
        $http.get('api/getInfo/' + reportPeroid + '/spa_saleTreatment/' + reportdate).
        success(function(data) {
            $scope.spa_saleTreatment = data;
            //console.log(data);
        });

        $http.get('api/getInfo/' + reportPeroid + '/spa_customer/' + reportdate). // 
        success(function(data) {
            $scope.spa_customer_monthly = data;
        });

        $http.get('api/getInfo/' + reportPeroid + '/spa_menu/' + reportdate).
        success(function(data) {
            $scope.spa_menu_monthly = data;
        });

        $http.get('api/getInfo/' + reportPeroid + '/spa_feedback/' + reportdate).
        success(function(data) {
            $scope.spa_feedback_monthly = data;
            //console.log(data);
        })

        $http.get('api/getInfo/' + reportPeroid + '/spa_comission/' + reportdate).
        success(function(data) {
            $scope.spa_commission_monthly = data;
            //console.log(data);
        })
        $http.get('api/getInfo/' + reportPeroid + '/spa_booking_commis/' + reportdate).
        success(function(data) {
            //console.log(data);
            $scope.spa_booking_commis_monthly = data;
        });
        $http.get('api/getInfo/' + reportPeroid + '/spa_transport/' + reportdate).
        success(function(data) {
            $scope.spa_transport_monthly = data;
            //console.log(data);
        });
        $http.get('api/getInfo/' + reportPeroid + '/spa_saleProduct/' + reportdate).
        success(function(data) {
            console.log(data);
            (data.length) ? $scope.spa_saleProduct_monthly = data: [];

        });
        $http.get('api/getInfo/' + reportPeroid + '/spa_booking_source/' + reportdate).then(function(re) {
            $scope.spa_booking_source = re.data;
        })
        $http.get('api/getInfo/' + reportPeroid + '/spa_orientation/' + reportdate).then(function(re) {
            $scope.spa_orientation = re.data;
        })
    }
//console.log(DataRe);


}]);
// sale partner report
appControllers.controller('salePartner', ['$scope', '$http', '$timeout', '$filter', '$location', 'DataApi', '$rootScope', '$stateParams', '$q', 'usSpinnerService', 'dataInit', '$window', 'routeName', function($scope, $http, $timeout, $filter, $location, DataApi, $rootScope, $stateParams, $q, usSpinnerService, dataInit, $window, routeName) {
    $rootScope.pageTitle = 'Spa Report';
    $scope.invoiceType = 'Monthly Invoice';
    $scope.theDate = new Date();

    $http.get('api/getInfo/info_id/spa_sale_customer').then(function(re) {
        $scope.customers = re.data;
    })
    $http.get('api/getInfo/info_id/spa_info_product').then(function(re) {
        $scope.products = re.data;
    })

    $scope.getInvoice = function(dateReport, customer, invoiceType) {
        console.log(customer)
        var date = Date.parse(dateReport);
        var reportdate;

        reportdate = $filter('date')(date, 'MMyy');

        if (invoiceType == 'Back Margin') {
            $http.get('api/getInfo/spa_partner_backMargin/' + reportdate + '/' + customer).then(function(re) {
                $scope.sale = {}
                $scope.sale.customer = $scope.customer;
                $scope.sale.term = $filter('date')(date, 'MMM-yyyy');
                $scope.sale.dateInvoice = new Date();
                $scope.saleDetail = re.data;

            });
        } else {
            $http.get('api/getInfo/spa_partner_sale/' + reportdate + '/' + customer).then(function(re) {
                $scope.sale = {}
                $scope.sale.customer = $scope.customer;
                $scope.sale.term = $filter('date')(date, 'MMM-yyyy');
                $scope.sale.dateInvoice = new Date();
                $scope.saleDetail = re.data;
            });
        }

    }
    $scope.print = function(invoiceId) {
        // window.open('invoice_spa/' + invoiceId, '_blank');
        window.print();

    };
    $scope.comboIdString = function(input, key) {
        // console.log(input);
        if (!key)
            return;
        var selected = $filter('filter')(input, {
            id: key.toString()
        }, true);
        // short circuit the as follow 
        /*        
        if (key && selected.length){
            return selected[0].name;
        }else{
            return '';
        }
        */
        return (key && selected.length) ? selected[0].name : '';
    }
}]);
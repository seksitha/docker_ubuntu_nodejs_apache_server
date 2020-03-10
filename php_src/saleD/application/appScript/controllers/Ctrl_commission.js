appControllers.controller('commissionCtrl', ['$scope', '$http', '$timeout', '$filter', '$location', '$rootScope', 'usSpinnerService', '$stateParams', 'DataApi', function ($scope, $http, $timeout, $filter, $location, $rootScope, usSpinnerService, $stateParams, DataApi) {

    //TODO seperate OMS and KRung

    // For Disable 
    $scope.disabled = { id: true, term: true, reciept_number: true, amount: true, shop: true };
    // For Hiding
    $scope.hide = { id: true, guide_phone: true };
    $scope.emptyData = function () {
        $scope.datas = [];
        $scope.totalCommissions = [];
        $scope.commissionReport = [];
        $scope.searchCommission = [];
    }
    $scope.getEditCommission = function (term) {

        $scope.emptyData();
        if (term) {
            term = $filter('date')(term, 'MMyy');
            $http.get('api/getInfo/edit_commission/' + term).then(function (re) {
                console.log(re.data);
                $scope.datas = re.data;
            });
        } else { alert('please, input date!') }
    }

    $scope.getListCommission = function () {
        $scope.emptyData();
        $http.get('api/getInfo/get_total_commissions').then(function (re) {
            console.log(re.data)
            $scope.totalCommissions = re.data;
            (re.data.length) ? '' : alert('No new commission in the list!')
        });
        $http.get('api/getInfo/commission_last_add').then(function (re) {
            //console.log(re.data)
            $scope.commissionLastAdd = Date.parse(re.data[0].date_add);
        })
        $http.get('api/getInfo/commission_outstanding').then(function (re) {
            console.log(re.data)
            $scope.outStandingCommission = re.data;
        })
        $http.get('api/getInfo/commission_outstanding_yearly').then(function (re) {
            console.log(re.data)
            $scope.outStandingCommissionYearly = re.data;
        })
    }


    $scope.getCommissionReport = function (term) {
        $scope.emptyData();

        if (term) {
            term = $filter('date')(term, 'MMMM-yyyy');
            $http.get('api/getInfo/commission_report/' + term).then(function (re) {
                $scope.commissionReport = re.data;
                (re.data.length) ? '' : alert('there is no report for this term')
            });

        } else {
            alert('please, input date!');
        }
    }

    $scope.searchPrintCommission = function (guide_phoneNumber) {
        $scope.emptyData();
        if (guide_phoneNumber) {
            $http.get('api/getInfo/search_guide_commission/' + guide_phoneNumber).then(function (re) {
                $scope.searchCommission = re.data;
                (re.data.length) ? '' : alert('there is not commission for this tour guide');
            });
        } else { alert('please, input tour guide phone number!') }
    }
    $scope.updateGuide = function (data) {
        //console.log(data);
        if (data.shop == 'oms') {
            $http.post('api/updateInfo/oms_sale', { id: data.id, guide_phone: data.guide_phone, memo: data.memo }).then(function () { })

        } else if (data.shop == 'krung') {
            $http.post('api/updateInfo/krung_sale', { id: data.id, guide_phone: data.guide_phone, memo: data.memo }).then(function () { })
        }
        //console.log('yes');

    }

    $scope.submitCommission = function (term) {
        if (term) {
            term = $filter('date')(term, 'yyyy-MM');

            $http.get('api/getInfo/appendData/commission/' + term).then(function (re) {
                alert('Datas has submited successfuly!')
            }, function (re) {
                console.log(re.data);
                alert('Problem occur, Either you are trying to add Datas that already existed or You are trying to add datas at current month which is not yet end!')
            });
        } else { alert('please, input date!') }
    }
    $scope.now = Date.now();

    $scope.deleteCommission = function (guide, datas, index) {
        if (window.confirm('Are you sure to delete this commission?')) {
            guide = guide.replace(/\D/g, '')

            $http.get('api/getInfo/appendData/deleteCommission/' + guide).then(function () {
                datas.splice(index, 1)
            }, function () {
                alert('Unable to delete at the moment');
            })
        }

    }

    $scope.printCommission = function (guideCommission) {
        $scope.emptyData();
        $scope.searchCommission = guideCommission;

        var now = $filter('date')(Date.now(), 'yyyy-MM-dd');
        if (window.confirm("Please Check if he has the phone with him before printing")) {
            console.log(guideCommission)
            for (var key in guideCommission) {
                $http.post('api/updateInfo/guide_commission', { id: guideCommission[key].id, paid_state: 'paid', date_paid: now }).then(function () { }, function (re) {
                    alert('there is error please do not make payment untill the error is fixed');
                });
            }
            window.print();
        }

    }

    $scope.print = function () {
        window.print();
    }
}]);
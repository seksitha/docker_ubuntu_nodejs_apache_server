'use strict';
appControllers.controller('bookingSpaCtrl', ['$scope', '$http', '$timeout', '$filter', '$location', 'DataApi', '$rootScope', '$stateParams', '$q', 'usSpinnerService', 'dataInit', '$window', 'routeName', '$state', function ($scope, $http, $timeout, $filter, $location, DataApi, $rootScope, $stateParams, $q, usSpinnerService, dataInit, $window, routeName, $state) {
    //DataApi.api.setName('booking');
    // $scope.clickme = function(me){
    //     $scope.
    // }
    //$scope.scope.getMainRecord('social' , 'myrecord');
    // $scope.api.me('scope')
    // console.log($scope.scope = $scope.api.scope);
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
    //$scope.sub = 0;
    $scope.child = {};
    var url = routeName;
    //console.log(DataApi.tryCall())
    $scope.myCall = [];
    $scope.tryCall = DataApi.tryCall;
    $scope.callBack = function (data) {
        console.log(data)
        //scope = data;
    }

    $scope.checkRoute = function () {
        switch (url) {
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

    var updateMain = 'api/updateInfo/spa_sale_massage';
    var insertMainApi = 'api/addInfo/spa_sale_massage';
    var getLastInfoApi = 'api/getInfo/lastInfo/spa_sale_massage';

    var updateChildApi = 'api/updateInfo/spa_sale_comis_thera';
    var getLastIdChildApi = 'api/getLastId/spa_sale_comis_thera';
    var insertChildApi = 'api/addInfo/spa_sale_comis_thera';

    var getLastIdDetailApi = 'api/getLastId/spa_sale_massage_detail';
    var insertDetailApi = 'api/addInfo/spa_sale_massage_detail';
    var updateDetailApi = 'api/updateInfo/spa_sale_massage_detail';

    var getRecordChild2Url = 'api/getRecord/spa_sale_feedback/';
    var updateChildApi2 = 'api/updateInfo/spa_sale_feedback';
    //console.log(dataInit);

    $scope.nationality = ['Khmer', 'Japanese', 'Chinese', 'Korean', 'European', 'Other'];
    $scope.gender = ['Male', 'Female'];
    $scope.types = ['Detox', 'Relax', 'Power up', 'Warming', 'Cooling']
    $scope.source = ['Online', 'Walkin', 'OMS']
    /***************************************************************************************************************
     *Get the whole data for view /
     ***************************************************************************************************************/
    $scope.mains = dataInit[0].data;
    $scope.saleDetails = dataInit[1].data;
    $scope.employees = dataInit[2].data;
    $scope.products = dataInit[3].data;
    $scope.customers = dataInit[4].data;
    $scope.commissioner = dataInit[5].data;
    $scope.bookingMethod = dataInit[7].data;
    $scope.cusOrientation = dataInit[8].data;
    //$scope.bigTotalItems = $scope.main.length;

    $scope.dataPaging = function (page, main) {

        if (main.length == 0) {
            $scope.newRow(0, [], $scope.saleStatus)
            main = [{ gender: null, age: 0 }];
            page = 1
        }

        $scope.sale = main[page - 1];
        //console.log(main.length)
        $scope.sale.age = ($scope.sale.age).toString();

        $scope.saleDetail = $filter('filter')($scope.saleDetails, {
            'main_id': parseInt(main[page - 1].id)
        }, true);
        //the current page number
    }

    $scope.init = function () {
        if ($state.current.name === 'main.sale.sale_retail') {
            angular.element('.wholeSale').toggleClass('hide');
            $scope.saleState = 'Retail'
            $scope.disableMenu = false;
            $scope.main = $filter('filter')($scope.mains, { sale_status: 0 }, true)
            $scope.saleStatus = 0;
            $scope.bigTotalItems = $scope.main.length;
            $scope.bigCurrentPage = $scope.main.length;
            $scope.dataPaging($scope.main.length, $scope.main)
        } else if ($state.current.name === 'main.sale.sale_wholeSale') {
            angular.element('.backMargin').toggleClass('hide');
            $scope.saleState = 'Whole Sale'
            $scope.disableMenu = true; // only add the partner name will allow to add menue
            $scope.main = $filter('filter')($scope.mains, { sale_status: 1 }, true)
            $scope.saleStatus = 1;
            $scope.bigTotalItems = $scope.main.length;
            $scope.bigCurrentPage = $scope.main.length;
            $scope.dataPaging($scope.main.length, $scope.main)
        } else {
            angular.element('.noBackMargin').toggleClass('hide');
            $scope.saleState = 'Back Margin'
            $scope.disableMenu = true; // only add the partner name will allow to add menue
            $scope.main = $filter('filter')($scope.mains, { sale_status: 2 }, true)
            $scope.saleStatus = 2;
            $scope.bigTotalItems = $scope.main.length;
            $scope.bigCurrentPage = $scope.main.length;
            $scope.dataPaging($scope.main.length, $scope.main)
        }
        //console.log($scope.saleStatus)
    }

    $scope.$watch(function () {
        return $state.$current.name
    }, function (newVal, oldVal) {
        $scope.init();
    })

    $http.get('api/getInfo/info_exchange_rate').then(function (re) {
        $scope.exchangeRate = re.data;
        //console.log(re.data)
    });

    $scope.updateRate = function (rate) {
        $http.post('api/updateInfo/info_exchange_rate', rate).then(function () { });
    }

    $scope.newRow = function (pageItems, main, status) {
        DataApi.addNewBooking(insertMainApi, getLastInfoApi, $scope.saleStatus, function (data) {
            $scope.sale = data;
            $scope.sale.sale_status = $scope.saleStatus;
            main.push($scope.sale);
            $scope.mains.push($scope.sale);
            $scope.bigTotalItems = main.length;
            $scope.bigCurrentPage = main.length;
            $scope.dataPaging(main.length, main);
        })
    }

    /***************************************************************************************************************
     *update or Change sale information sale_spa table /
     ***************************************************************************************************************/
    $scope.updateSale = function (param, employees) { // main api
        //console.log(param);
        if (typeof (param.book_by) === 'string') { // use because type ahead directive return string
            var staff = $filter('filter')(employees, {
                name: param.book_by
            }, true);
            param.book_by = staff[0].id; // convert to number for mysql
            //param.cashier = staff[0].id;
        } else if (typeof (param.cashier) === 'string') { // use because type ahead directive return string
            //console.log(employees);
            var staff = $filter('filter')(employees, {
                name: param.cashier
            }, true);
            param.cashier = staff[0].id;
            //param.book_by = staff[0].id;
        }
        // param.partner = param.partner.id; // typeahead return object
        // console.log(param.partner);
        param.date_treatment = $filter('date')(param.date_treatment, 'yyyy-MM-dd');
        param.date_bill = $filter('date')(param.date_bill, 'yyyy-MM-dd');
        param.date_booked = $filter('date')(param.date_booked, 'yyyy-MM-dd');
        param.time_start = $filter('date')(param.time_start, 'yyyy-MM-dd hh:mm')
        param.time_end = $filter('date')(param.time_end, 'yyyy-MM-dd hh:mm')
        param.time_pickup = $filter('date')(param.time_pickup, 'yyyy-MM-dd hh:mm')
        //console.log(param.date_treatment);
        $http.post(updateMain, param).
            then(function (data) {
                $scope.setDateBook();
                //console.log(param)
            });
    }

    $scope.setDateBook = function () {
        var date = Date.parse(Date());
        var dateBook = new Date($filter('date')(date, 'yyyy-MM-dd'));
        //console.log(dateBook);
        ($scope.sale.date_booked === null || $scope.sale.date_booked === '0000-00-00 00:00:00') || $scope.sale.date_booked === '' ? $scope.sale.date_booked = dateBook : '';
    }

    /*
     *After Cashier iput the name, its name will not be able to change for future reference.
     */
    $scope.setInvoiceNum = function (saleId, invRefer, cashier, saleData, employees) {

        if (cashier !== null) {
            if (typeof (cashier) == 'string') {
                var staff = parseInt($filter('filter')(employees, {
                    name: cashier
                }, true)[0].id);
            }
            console.log(staff);
            var today = $filter('date')($scope.dateConv(Date()), 'yyyyMM');
            var thisMonth = $filter('date')($scope.dateConv(Date()), 'MMyy');
            var todayDate = $filter('date')($scope.dateConv(Date()), 'yyyy-MM-dd');
            var invoiceNum = '';

            $http.get('api/checkInvoice/spa_sale_massage/' + thisMonth).then(function (response) {
                if (response.data[0].lastNum >= 1 && invRefer === null && cashier !== 0) { // if the respond is greater 0r = 1 will increment
                    var increment = parseInt(response.data[0].lastNum);
                    increment = increment + 1;
                    var str = "" + increment; 
                    var pad = "0000";
                    var ans = pad.substring(0, pad.length - str.length) + str;
                    invoiceNum = today + '-' + ans;
                    $http.post(updateMain, {
                        id: saleId,
                        inv_num: increment,
                        inv_refer: invoiceNum,
                        date_bill: todayDate,
                        'cashier': parseInt(staff)
                    }).then(function (Re) {
                        $scope.sale.inv_refer = invoiceNum;
                        $scope.sale.inv_num = increment;
                        $scope.sale.date_bill = todayDate;
                    });

                } else if (response.data[0].lastNum === 0 && invRefer == null && cashier !== 0) { // if the respond is 0 will start from one
                    invoiceNum = today + '-' + '0001';
                    var postData = {
                        id: saleId,
                        inv_num: "1", //this is not post to the server then it is always 00001
                        inv_refer: invoiceNum,
                        date_bill: todayDate,
                        cashier: staff
                    };
                    $http.post(updateMain, postData).then(function (secRe) {
                        //console.log(postData);
                        $scope.sale.inv_refer = invoiceNum;
                        $scope.sale.date_bill = todayDate;
                    });
                }
            });
        }
    }
    $scope.deleteSale = function (singleMain) {
        if ($window.confirm('Click OK if you are sure about this delete')) {
            $http.delete('api/deleteInfo/spa_sale_massage/' + singleMain.id).then(function (response) {
                var url = 'spa_booking/booking/' + (($scope.main[$scope.main.indexOf(singleMain) - 1]).id);
                $scope.main.splice($scope.main.indexOf(singleMain), 1)
                console.log(url);
                window.location = url;
            });
        }
    }

    /***************************************************************************************************************
     *input product by bacode or manual input / add to spa_sale_massage_detail
     ***************************************************************************************************************/
    $scope.addProduct = function (saleDetails, saleDetail, sale_id, products, param1, therapist, customer, partner) {
        if (!therapist || !param1) {
            alert('please input missing field');
            return
        }
        var objOfPrice = $filter('filter')(products, { 'code': param1 }, true);
        var searchProduct = $filter('filter')(saleDetail, { 'product': parseInt(objOfPrice[0].id) }, true); //search in sale detail if it is exist
        // console.log(partner);
        var searchCustomer, pricePercentage
        if (partner && $scope.saleStatus != 2) {
            searchCustomer = $filter('filter')(customer, { 'id': partner.toString() }, true); //search in sale detail if it is exist
            pricePercentage = (searchCustomer[0].price_percentage / 100)
        } else {
            pricePercentage = 1;
        }
        
        if (searchProduct.length == 0) {
            //console.log("notYetexist");

            if (objOfPrice.length == 0) {
                alert('Oops! not the product in the list, try again');
                return
            }
            $http.get('api/getLastId/spa_sale_massage_detail').then(function (respond) {
                therapist = $filter('filter')($scope.employees, { name: therapist }, true)[0].id;
                var add = {
                    id: respond.data[0].id + 1,
                    main_id: sale_id,
                    product: parseInt(objOfPrice[0].id),
                    price: parseInt(objOfPrice[0].price * pricePercentage), // todo to think about diference price
                    qty: 1,
                    number: saleDetail.length + 1,
                    discount: 0,
                    therapist1: parseInt(therapist)
                };
                //console.log($scope.add);
                $http.post(insertDetailApi, add).
                    then(function (respond) {
                        //console.log(add)
                        if (respond.data[0].response == "Yes") {
                            saleDetail.push(add);
                            saleDetails.push(add);
                        }
                    });
            });
        } else {
            alert('One invoice one customer please add another invoice');
            // searchProduct[0].qty = searchProduct[0].qty + 1;
            // console.log(searchProduct);
            // $http.post(subApiUpdate, searchProduct[0]).then(function(datas) { //posting data to server
            //     if (datas.data[0].response == "Yes") {}
            // });
        }
        $scope.child.barcode = null;
        $scope.child.therapist = null;
    }

    $scope.updateDetail = function (data, products, index) {
        var result = $filter('getById')(products, data.product);
        // data.price = result.price;
        $http.post(updateDetailApi, data).
            then(function (data) {
                // $scope.saleDetail[index].price = result.price;
            });
    }

    $scope.deleteDetail = function (index, saleDetail, singleSaleDetail) {
        if ($window.confirm('are you sure for this delete?')) {
            console.log(singleSaleDetail.id);
            $http.delete('api/deleteInfo/spa_sale_massage_detail/' + singleSaleDetail.id)
                .then(function () {
                    saleDetail.splice(index, 1);
                    $scope.saleDetails.splice($scope.saleDetails.indexOf(singleSaleDetail), 1)
                    console.log(saleDetail);
                }, function (er) {
                    alert('lost connection can not delete try again');
                })
        }
    }

    $scope.addCommission = function (data, saleId, employees, param1, param2) {
        DataApi.addGift(data, saleId, employees, param1, param2, function (status, reply) {
            if (status === 200) {
                $scope.commissions[reply].duration = param2;
            } else {
                $scope.commissions.push(reply);
            }
            $scope.therapist = $scope.duration = null;
        });
    }

    $scope.updateComis = function (singleComis) {
        $http.post(updateChildApi, singleComis).then(function () {
            //$scope.feedback[index] = singleFeed;
        });
    }
    $scope.deleteComis = function (index, commissions, singleComis) {
        if ($window.confirm('are you sure for this delete?')) {
            $http.delete('api/deleteInfo/spa_sale_comis_thera/' + singleComis.id)
                .then(function () {
                    commissions.splice(index, 1);
                    $scope.commissionss.splice($scope.commissionss.indexOf(singleComis), 1)
                }, function (er) {
                    alert('lost connection can not delete try again');
                })
        }
    }

    $scope.addFeedback = function (saleid) {
        var feeds = {
            main_id: saleid,
            feedback: 'Receptionist'
        }
        var feeds1 = {
            main_id: saleid,
            feedback: 'Ambience'
        }
        var feeds2 = {
            main_id: saleid,
            feedback: 'Therapist'
        }
        var feeds3 = {
            main_id: saleid,
            feedback: 'Therapy'
        }

        $http.post('api/addInfo/spa_sale_feedback', feeds);
        $http.post('api/addInfo/spa_sale_feedback', feeds1);
        $http.post('api/addInfo/spa_sale_feedback', feeds2);
        $http.post('api/addInfo/spa_sale_feedback', feeds3).then(function () {
            $http.get('api/getRecord/spa_sale_feedback/' + saleid).then(function (response) {
                $scope.feedbacks = $scope.feedbacks.concat(response.data);
                $scope.feedback = response.data;
                //console.log($scope.feedbacks);
                $scope.disableAddFeed = 4;
            });
        });
    }

    $scope.updateFeed = function (singleFeed) {
        //console.log(data);
        $http.post(updateChildApi2, singleFeed).then(function () {
            //$scope.feedback[index] = singleFeed;
        });
    }
    // $scope.updateVAT = function(isVat, sub) {
    //     //console.log(isVat);
    //     var creditCharge;
    //     ($scope.sale.pay_by =='Credit') ? creditCharge = 1.02 : creditCharge = 1;
    //     if (isVat === 1) {
    //         console.log(sub);
    //         $scope.sale.total = (sub * 1.1)*creditCharge;
    //         $scope.updateSale($scope.sale, $scope.employees);
    //     } else {
    //         console.log(sub);
    //         $scope.sale.total = sub*creditCharge;
    //         $scope.updateSale($scope.sale, $scope.employees);
    //     }
    // }

    // $scope.child = {};
    // var parentScope = $scope.$parent;
    // parentScope.child = $scope;


    $scope.$watchGroup(['sale.isVAT', 'sale.pay_by', 'child.sub','sale.earn_transport'], function (value, old) {
        console.log('run',Object.keys($scope.sale));
        if (!$scope.sale) return;
        var creditCharge;
        ($scope.sale.pay_by == 'Credit') ? creditCharge = 1.02 : creditCharge = 1;
        if (value && $scope.sale.isVAT === 0) {
            $scope.sale.total = ($scope.child.sub) * creditCharge; // $scope.child.sub is just the total got from sub(detial) not bind to model
            $scope.grantTotal = (($scope.child.sub) + ($scope.sale.earn_transport)) * creditCharge; // we dont stor this to database transportation only store without 2%. becuase of the report format
            $scope.updateSale($scope.sale, $scope.employees);
        } else if (value && $scope.sale.isVAT === 1) {
            $scope.sale.total = ($scope.child.sub * 1.1) * creditCharge;
            $scope.grantTotal = (($scope.child.sub * 1.1) + ($scope.sale.earn_transport)) * creditCharge;
            $scope.updateSale($scope.sale, $scope.employees);
        }
    }, true);

    $scope.$watch('sale.partner', function () {

        if ($scope.sale.partner == null && $scope.saleStatus > 0 || $scope.sale.partner === '') {
            $scope.disableMenu = true;
        } else {
            $scope.disableMenu = false;
        }
    })

    $scope.goToDate = function (dateFilter) {
        dateFilter = $filter('date')(dateFilter, 'yyyy-MM-dd')
        var index = $filter('filter')($scope.main, { date_bill: dateFilter }, true)[0]
        var page = $scope.main.indexOf(index) + 1;
        console.log(page);
        if (page <= 1) {
            alert('There is no record in this peroid');
            //return;

        } else {
            $scope.dataPaging(page, $scope.main, )
            $scope.bigCurrentPage = page;
        }

        // $scope.date_filter = dateFilter;
    }
    $scope.print = function (invoiceId) {
        // window.open('invoice_spa/' + invoiceId, '_blank');
        window.print();

    };
    $scope.dateConv = function (d) {
        return Date.parse(d);
    };
    $scope.combo = function (input, key) {
        // console.log(input);
        var selected = $filter('filter')(input, {
            name: key
        }, true);
        return (key && selected.length) ? selected[0].id : '';
    }
    $scope.comboId = function (input, key) {
        // console.log(input);
        var selected = $filter('filter')(input, {
            id: parseInt(key)
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
    $scope.comboIdString = function (input, key) {
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
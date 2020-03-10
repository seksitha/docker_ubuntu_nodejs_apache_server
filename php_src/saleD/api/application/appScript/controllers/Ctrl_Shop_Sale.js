'use strict';
appControllers.controller('saleCtrl', ['$scope', '$http', '$timeout', '$filter', '$location', '$rootScope', 'usSpinnerService', 'DataRe', '$stateParams', 'DataApi', function($scope, $http, $timeout, $filter, $location, $rootScope, usSpinnerService, DataRe, $stateParams, DataApi) {
    $rootScope.pageTitle = 'Sale';
    var lid = null;
    $scope.maxSize = 1; // this will be interval in pagination
    $scope.bigCurrentPage = 1; //assing to ngModel
    $scope.itemPerpage = 1;
    $scope.bigTotalItems = null;
    $scope.filterStart = 0;
    $scope.datas = [];
    var selected = [];
    $scope.bind = 100;
    $scope.waitLoad = true;
    $scope.setFilterStart = function() {
        $scope.filterStart = $scope.itemPerpage * ($scope.bigCurrentPage - 1);
    }
    $scope.nationality = ['Khmer', 'Japanese', 'Chinese', 'Korean', 'European', 'Other'];
    $scope.gender = ['Male', 'Female'];


    var updateMainUrl = 'api/updateInfo/oms_sale';
    var insertMainUrl = 'api/addInfo/oms_sale';
    var getLastInvoiceUrl = 'api/getInfo/lastInvoice/oms_sale';
    var getLastMainUrl = 'api/getInfo/lastRecord/oms_sale'

    var insertDetailUrl = 'api/addInfo/oms_sale_detail';
    var updateDetailUrl = 'api/updateInfo/oms_sale_detail';
    var getLastDetailUrl = 'api/getInfo/lastRecord/oms_sale_detail';

    var updateGiftUrl = 'api/updateInfo/oms_sale_gift';
    var insertGiftUrl = 'api/addInfo/oms_sale_gift';
    var getLastIdGiftUrl = 'api/getInfo/getLastId/oms_sale_gift';


    /***************************************************************************************************************
     *Get the whole data for view /
     ***************************************************************************************************************/
    //console.log(DataRe)
    $scope.employees = DataRe[0].data;
    $scope.products = DataRe[1].data;
    $scope.main = DataRe[2].data;
    $scope.saleDetails = DataRe[3].data;
    $scope.saleGifts = DataRe[4].data;
    //$scope.feedbacks = DataRe[5].data;
    $scope.bigTotalItems = $scope.main.length;
    // $http.get('api/getInfo/info_exchange_rate').then(function(re) {
    //     $scope.exchangeRate = re.data;
    //     //console.log(re.data)
    //     $http.jsonp('http://finance.yahoo.com/webservice/v1/symbols/khr=x,thb=x,jpy=x,%20cny=x,usd=x/quote?format=json&callback=JSON_CALLBACK')
    //         .then(function(re) {
    //             var rate = [1, 1.05, 1.05, 1.05, 1]
    //             angular.forEach(re.data.list.resources, function(value, key) {
    //                 $scope.exchangeRate[key].rate = (re.data.list.resources[key].resource.fields.price * rate[key]);
    //                 $http.post('api/updateInfo/info_exchange_rate', $scope.exchangeRate[key])
    //             });
    //         });
    // });
    // get employee to use in combo box

    // angular.forEach(Currency.data.list.resources,function(value,key){
    //   $scope.exchangeRate[key].rate = (Currency.data.list.resources[key].resource.fields.price);
    // });


    /***************************************************************************************************************
     *slice data for navigation / put it up here because if we put after load it will show undifine
     ***************************************************************************************************************/

    $scope.dataPaging = function(page, main) {
        //$scope.spinner = true;
        //console.log(page);
        $scope.sale = main[page - 1];
        //console.log($scope.sale);
        $scope.saleDetail = $filter('filter')($scope.saleDetails, {
            'main_id': parseInt($scope.sale['id'])
        }, true);
        //console.log($scope.saleDetail);
        $scope.saleGift = $filter('filter')($scope.saleGifts, {
            'main_id': parseInt($scope.sale['id'])
        }, true);
        //console.log($scope.saleGift)
        $scope.bigCurrentPage = page;
        //$scope.sale = main[page - 1];
        //console.log($scope.sale);
    }

    /***************************************************************************************************************
     *Initial Data for Page load/
     ***************************************************************************************************************/
     $scope.init = function(length){
        $scope.bigCurrentPage = length;
        $scope.dataPaging(length, $scope.main);
     }

     $scope.init($scope.main.length)

     $scope.find = function(idd){
        var search = $filter('filter')($scope.main,{id:idd},true)
         console.log($scope.main.indexOf(search[0]))
        $scope.init($scope.main.indexOf(search[0])+1)
     }
    $scope.newRow = function(pageItems, main) {
        $http.post(insertMainUrl, { 'pay_by': 'Cash' }).then(function() {
            $http.get(getLastMainUrl).then(function(re) {
                $scope.sale = re.data[0];
                $scope.main.push($scope.sale);
                $scope.bigTotalItems = $scope.main.length;
                $scope.bigCurrentPage = $scope.main.length;
                $scope.dataPaging($scope.main.length, $scope.main);

            });
        });
    }

    /***************************************************************************************************************
     *update or Change sale information sale_spa table /
     ***************************************************************************************************************/
    $scope.updateSale = function(param, employees) { // main api
            //console.log($scope.sale.employee);
            if (typeof(param.employee) === 'string') { //use because type ahead directive return string
                var staff = $filter('filter')(employees, {
                    name: param.employee
                }, true);
                param.employee = staff[0].id; // convert to number for mysql
            }

            $http.post(updateMainUrl, param).then(function(data) {
                //console.log(param)
            });
        }

    $scope.setInvoiceNum = function(sale, employees) {
        console.log(sale.employee);
        if (sale.employee !== null) {
            if (typeof(sale.employee) == 'string') {
                var staff = parseInt($filter('filter')(employees, {
                    name: sale.employee
                }, true)[0].id);
            }
            //console.log(staff);
            var today = $filter('date')($scope.dateConv(Date()), 'yyyyMM');
            var thisMonth = $filter('date')($scope.dateConv(Date()), 'MMyy');
            var todayDate = $filter('date')($scope.dateConv(Date()), 'yyyy-MM-dd');
            var time = $filter('date')($scope.dateConv(Date()), 'yyyy-MM-dd hh:mm');
            var invoiceNum = '';

            $http.get(getLastInvoiceUrl + '/' + thisMonth).then(function(response) {
                if (response.data[0].lastNum >= 1 && sale.inv_refer === null && sale.employee !== 0) { // if the respond is greater 0r = 1 will increment
                    var increment = parseInt(response.data[0].lastNum);
                    increment = increment + 1;
                    var str = "" + increment;
                    var pad = "0000";
                    var ans = pad.substring(0, pad.length - str.length) + str;
                    invoiceNum = today + '-' + ans;
                    $http.post(updateMainUrl, {
                        id: sale.id,
                        inv_num: increment,
                        inv_refer: invoiceNum,
                        date_bill: todayDate,
                        time: time,
                        employee: parseInt(staff)
                    }).then(function(secRe) {
                        $scope.sale.inv_refer = invoiceNum;
                        $scope.sale.inv_num = increment;
                        $scope.sale.date_bill = todayDate;
                        $scope.sale.time = time;
                    });

                } else if (response.data[0].lastNum === 0 && invRefer == null && cashier !== 0) { // if the respond is 0 will start from one
                    invoiceNum = today + '-' + '0001';
                    $http.post(updateMainUrl, {
                        id: sale.id,
                        inv_num: '1',
                        inv_refer: invoiceNum,
                        date_bill: todayDate,
                        time: time,
                        employee: staff
                    }).then(function(secRe) {
                        $scope.sale.inv_refer = invoiceNum;
                        $scope.sale.date_bill = todayDate;
                        $scope.sale.time = time;
                    });
                }
            });
        }
    }
    $scope.deleteSale = function(singleMain) {
        if ($window.confirm('Click OK if you are sure about this delete')) {
            $http.delete('api/deleteInfo/spa_sale_massage/' + singleMain.id).then(function(response) {
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
    $scope.addProduct = function(sale, detail, saleDetails, products, productCode) {
        console.log(detail)
        var searchProduct = $filter('filter')(detail, { 'product': parseInt(productCode) }, true);
        console.log(searchProduct);
        if (searchProduct.length == 0) {
            console.log("notYetexist");
            var objOfPrice = $filter('getById')(products, productCode);
            $http.get(getLastDetailUrl).then(function(respond) {
                console.log(objOfPrice);
                var add = {
                    id: respond.data[0].id + 1,
                    main_id: sale.id,
                    product: parseInt(productCode),
                    price: objOfPrice.dir_price, // todo to think about diference price
                    qty: 1,
                    number: detail.length + 1,
                    discount: 0
                };
                //console.log($scope.add);
                $http.post(insertDetailUrl, add).
                then(function(respond) {
                    //console.log(add)
                    detail.push(add);
                    saleDetails.push(add);

                });
            });
        } else {
            searchProduct[0].qty = searchProduct[0].qty + 1;
            console.log(searchProduct);
            $http.post(updateDetailUrl, searchProduct[0]).then(function(datas) { //posting data to server
                if (datas.data[0].response == "Yes") {}
            });
        }
    }

    $scope.updateDetail = function(data) {
        $http.post(updateDetailUrl, data).
        then(function(data) {
        });
    }

    $scope.deleteDetail = function(index, saleDetail, singleSaleDetail) {
        if ($window.confirm('are you sure for this delete?')) {
            console.log(singleSaleDetail.id);
            $http.delete('api/deleteInfo/spa_sale_massage_detail/' + singleSaleDetail.id)
                .then(function() {
                    saleDetail.splice(index, 1);
                    $scope.saleDetails.splice($scope.saleDetails.indexOf(singleSaleDetail), 1)
                    console.log(saleDetail);
                }, function(er) {
                    alert('lost connection can not delete try again');
                })
        }
    }

    $scope.addGift = function(sale, gift, saleGifts, products, productCode) {
        console.log(gift)
        var searchProduct = $filter('filter')(gift, { 'product': parseInt(productCode) }, true);
        console.log(searchProduct);
        if (searchProduct.length == 0) {
            console.log("notYetexist");
            var objOfPrice = $filter('getById')(products, productCode);
            $http.get(getLastIdGiftUrl).then(function(respond) {
                console.log(objOfPrice);
                var add = {
                    id: respond.data[0].id + 1,
                    main_id: sale.id,
                    product: parseInt(productCode),
                    //price: objOfPrice.dir_price, // todo to think about diference price
                    qty: 1,
                    //number: gift.length + 1,
                    //discount: 0
                };
                //console.log($scope.add);
                $http.post(insertGiftUrl, add).
                then(function(respond) {
                    //console.log(add)
                    gift.push(add);
                    saleGifts.push(add);

                });
            });
        } else {
            searchProduct[0].qty = searchProduct[0].qty + 1;
            console.log(searchProduct);
            $http.post(updateGiftUrl, searchProduct[0]).then(function(datas) { //posting data to server
                if (datas.data[0].response == "Yes") {}
            });
        }
    }
    $scope.updateGift = function(singleComis) {
        $http.post(updateGiftUrl, singleComis).then(function() {
            //$scope.feedback[index] = singleFeed;
        });
    }
    $scope.deleteComis = function(index, commissions, singleComis) {
        if ($window.confirm('are you sure for this delete?')) {
            $http.delete('api/deleteInfo/spa_sale_comis_thera/' + singleComis.id)
                .then(function() {
                    commissions.splice(index, 1);
                    $scope.commissionss.splice($scope.commissionss.indexOf(singleComis), 1)
                }, function(er) {
                    alert('lost connection can not delete try again');
                })
        }
    }





    $scope.$watch('sub', function(value, old) {
        //console.log('run');
        if (value !== 'undefined' && $scope.sale.isVAT === 0) {
            $scope.sale.total = $scope.sub;
            $scope.updateSale($scope.sale, $scope.employees);
        } else if (value !== 'undefined' && $scope.sale.isVAT === 1) {
            $scope.sale.total = value * 1.1;
            $scope.updateSale($scope.sale, $scope.employees);
        }
    });

    $scope.printReciept = function(invoiceId) {

        // window.open('invoice_spa/' + invoiceId, '_blank');
        window.print();

    };
    $scope.dateConv = function(d) {
        return Date.parse(d);
    };
    $scope.combo = function(input, key) {
        // console.log(input);
        var selected = $filter('filter')(input, {
            name: key
        }, true);
        return (key && selected.length) ? selected[0].id : '';
    }
    $scope.comboId = function(input, key) {
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

}]);
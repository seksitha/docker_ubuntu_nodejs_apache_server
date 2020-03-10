appControllers.controller('productOutCtrl', ['$scope', '$http', '$stateParams', '$filter', '$location', '$timeout', '$rootScope', '$document', '$window', function ($scope, $http, $stateParams, $filter, $location, $timeout, $rootScope, $document, $window) {
    $rootScope.pageTitle = 'Delivery form';
    $scope.outStatus = $stateParams.param;
    $scope.open = false;
    //console.log(url);
    var form = {
        'to_oms': 'Delivery To OMS',
        'oms_broken': 'OMS Broken Lost Record',
        'oms_restart': 'OMS Restart Stock',
        'oms_count': 'OMS count stock',
        'to_krung': 'Delivery To Krung',
        'krung_broken': 'Krung Broken Lost Record',
        'krung_restart': 'Krung Restart Stock',
        'krung_count': 'Krung Count Stock',
        'SD_in': 'Sale Department Purchase',
        'SD_2set': 'Sale Department For Set',
        'SD_2spa': 'Delivery to spa',
        'SD_restart': "Sale Department Restart Stock",
        'SD_lost': 'Sale Department Lost',
        'SD_count': 'sale Department count stock'
    };

    $scope.formName = form[$stateParams.param];

    /*
     * This section is to handling the pagination for info form
     */
    var lid = null;
    $scope.maxSize = 1; // this will be interval in pagination
    $scope.bigCurrentPage = 1; //assing to ngModel
    $scope.itemPerpage = 1;
    $scope.bigTotalItems = null;
    $scope.filterStart = 0;
    var selected = [];
    $scope.bind = 100;
    $scope.waitLoad = true;
    $scope.setFilterStart = function () {
        $scope.filterStart = $scope.itemPerpage * ($scope.bigCurrentPage - 1);
    }

    // get product to use in combo box.
    $http.get('api/getInfo/info_product').
        then(function (response) {
            //console.log
            ($scope.products = response.data);
        });

    $scope.loadPage = function () {
        $http.get('api/getInfo/delivery/' + $scope.outStatus).then(function (re) { // get the whole sale and sale_detail data for pagination but not for data reused
            $scope.datas = re.data;
            $scope.bigTotalItems = Math.round($scope.datas.length); // return total page
            $scope.bigCurrentPage = $scope.bigTotalItems; //go to last page
            $http.get('api/getInfo/inventory_product_out_detail/' + $scope.datas[$scope.bigTotalItems - 1].id).success(function (data) {
                $scope.delivery = $scope.datas[$scope.bigCurrentPage - 1]; // return single main sale
                $scope.outDetail = data; // return related saleDetail
            });
        });
    }();

    $scope.dataPaging = function (pageNum) {
        $http.get('api/getInfo/getLastId/inventory_product_out').then(function (data) { // fake $http for share scope
            $scope.deliveries = []; // single data of sale
            $scope.deliveries.push($scope.datas[pageNum - 1]); // take out one record from sale datas and push to sale array for view
            $scope.delivery = $scope.deliveries[0];
            $http.get('api/getInfo/inventory_product_out_detail/' + $scope.datas[pageNum - 1].id).success(function (data) { // get saleDetail one record
                //console.log($scope.datas[pageNum-1].id);
                if (data.length > 0) {
                    $scope.outDetail = data;
                } else {
                    $scope.outDetail = [];
                }
            });
        }).finally(function () { });
    };

    $scope.newRow = function () {
        //need insert to mysql here
        var today = Date.parse(new Date());
        var outdate = $filter('date')(today, 'yyyy-MM-dd HH:mm');
        //console.log(saledate);
        $http.post('api/addInfo/inventory_product_out', { date: outdate, employee: 'Phen', status: $scope.outStatus }).then(function (data) {
            $http.get('api/getInfo/getLastId/inventory_product_out'). // get last sale_id for increment id to push array.
                success(function (data) {
                    console.log(data);
                    // push with return array with sale_id
                    var feild = Object.getOwnPropertyNames($scope.datas[0]); // Get propety name from productid dynamicly
                    $scope.inserted = {};
                    for (var i = 1; i < feild.length; i++) { //loop trought the feild of Object and asign field of insert Obj
                        $scope.inserted[feild[i]] = '';
                    }
                    $scope.inserted.id = data[0].id; // api SELECT max(sale_id) as id (sale_id get from API)
                    var today = Date.parse(new Date());
                    $scope.inserted.date = $filter('date')(today, 'yyyy-MMM-dd HH:mm');
                    var month = $filter('date')(today, 'yyyyMM');
                    $scope.inserted.employee = 'Phen';
                    $scope.inserted.status = $scope.outStatus;

                    $http.post('api/updateInfo/inventory_product_out', { id: $scope.inserted.id }).
                        success(function (data) { });

                    $scope.datas.push($scope.inserted);
                    $scope.bigTotalItems = Math.round($scope.datas.length);
                    $scope.bigCurrentPage = $scope.bigTotalItems;
                    $scope.dataPaging($scope.bigCurrentPage);
                });
        });
    };

    $scope.addProduct = function (sale_id, text, text2) {
        $http.get('api/getInfo/getLastId/inventory_product_out').success(function (data) { //fake request
            //var objOfPrice = $filter('getById')($scope.products, text); // get price for inserting product according barcode input
            var addToArray = true; // set condition if the product is already exist in saledetail
            if ($scope.outDetail.length > 0) { // Check if the sale_detail if it's not blank insert product and increment
                for (var i = 0; i < $scope.outDetail.length; i++) { // if it's not null how many product there
                    if ($scope.outDetail[i].product == parseInt(text)) { // check input barcode if already exist. if yes increment qty
                        addToArray = false;
                        console.log("already exist");
                        var me = i;
                        var insertOutDetail = JSON.parse(JSON.stringify($scope.outDetail[me])); // Use Json to clone copy object
                        console.log(insertOutDetail);
                        insertOutDetail.qty = parseInt($scope.outDetail[me].qty) + parseInt(text2);

                        $http.post('api/updateInfo/inventory_product_out_detail', insertOutDetail).
                            success(function (data) {
                                if (data[0].response == "Yes") {
                                    $scope.outDetail[me].qty = parseInt($scope.outDetail[me].qty) + parseInt(text2);
                                } else { alert('server lost cannot insert try again') }
                            }).
                            error(function (status) {
                                alert('server lost cannot insert try again')
                            });
                        $scope.text = null; // clear input box  
                        $scope.text2 = null; // clear input box  
                    }
                }
            }
            if (addToArray) { // if barcode iput(text) is not exist then add to saleDetail
                var detailid = $scope.datas[$scope.bigCurrentPage - 1].id; // get sale_id and insert to sale_id of saleDetail
                console.log("notYetexist");
                $http.get('api/getInfo/getLastId/inventory_product_out_detail').success(function (data) {
                    console.log(data);
                    $scope.add = {
                        id: data[0].id + 1,
                        main_id: detailid,
                        product: text,
                        qty: text2,
                        number: $scope.outDetail.length + 1,
                    };

                    console.log($scope.add);
                    $http.post('api/addInfo/inventory_product_out_detail', $scope.add).
                        success(function (data) {
                            if (data[0].response = "Yes") {
                                $scope.outDetail.push($scope.add);
                            } else { alert('server lost cannot insert try again') }
                        });
                });
                $scope.text = null;
                $scope.text2 = null;
            }
        });
    }
    $scope.updateMain = function (param) {
        console.log(param.date);
        (param.date != null && param.date != 'undefined') ? param.date = $filter('date')(param.date, 'yyyy-MM-dd') : param.date = null;
        console.log(param.date);
        $http.post('api/updateInfo/inventory_product_out', param).
            success(function (data) { });
        //window.open('#/invoice/'+ saledata.sale_id);
    }

    $scope.updateDetail = function (data) {
        console.log(data);
        $http.post('api/updateInfo/inventory_product_out_detail', data).
            success(function (data) {
                console.log(data);

            }).error(function (data) {
                console.log(data);

            });
    }
    $scope.deleteRecord = function (mainId, formName) {
        console.log(mainId);
        if ($window.confirm('Click OK if you are sure about this delete')) {
            $http.delete('api/deleteInfo/inventory_product_out/' + mainId).then(function () {
                //$http.delete('/api/deleteInfo/inventory_product_out_detail/'+mainId).then(function(){
                window.location = "delivery/" + formName;
                //});
            });
        }
    }

    $scope.dateConv = function (d) {
        return Date.parse(d);
    };
    $scope.combo = function (input, key) {
        selected = $filter('filter')(input, { name: key });
        return (key && selected.length) ? selected[0].id : '';
    }
    $scope.comboId = function (input, key) {
        selected = $filter('filter')(input, { id: parseInt(key) });
        return (key && selected.length) ? selected[0].name : '';
    }
    $scope.printDelivery = function () {
        window.print();
    }

}]);
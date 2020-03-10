myApp.directive('reuseCtrl', function($filter, $timeout, $http, $window, $rootScope, $uibModal) {

    function controller($scope) {

        $scope.scopeParam.dataPaging = function() {

        }

        $scope.scopeParam.addProduct = function (saleDetails, data, sale_id, products, param1, subApiUpdate, lastIdApi, insertApi) {
            var objOfPrice = $filter('filter')(products, { 'code': param1 }, true);
            var searchProduct = $filter('filter')(data, { 'product': parseInt(objOfPrice[0].id) }, true); //search in sale detail if it is exist
            //console.log(parseInt(param1), data, searchProduct);
            if (searchProduct.length == 0) {
                console.log("notYetexist", products);

                if (objOfPrice.length == 0) {
                    alert('Oops! not the product in the list, try again');
                    return
                }
                $http.get(lastIdApi).then(function(respond) {
                    console.log(objOfPrice);
                    var add = {
                        id: respond.data[0].id + 1,
                        main_id: sale_id,
                        product: parseInt(objOfPrice[0].id),
                        price: parseInt(objOfPrice[0].price), // todo to think about diference price
                        qty: 1,
                        number: data.length + 1,
                        discount: 0
                    };
                    //console.log($scope.add);
                    $http.post(insertApi, add).
                    then(function(respond) {
                        //console.log(add)
                        if (respond.data[0].response == "Yes") {
                            data.push(add);
                            saleDetails.push(add);
                        }
                    });
                });
            } else {
                searchProduct[0].qty = searchProduct[0].qty + 1;
                console.log(searchProduct);
                $http.post(subApiUpdate, searchProduct[0]).then(function(datas) { //posting data to server
                    if (datas.data[0].response == "Yes") {}
                });
            }
        }

        
        /*
         * insert new record to mysql first maybe date and time
         * then get the insert id and blank data for new record
         * set pageItems, currentPage, and call dataPaging
         */
        function addNewBooking(insertMainApi, getLastInfoApi, callback) {
            $http.post(insertMainApi, { gender: null }).then(function(mainRe) {
                $http.get(getLastInfoApi).then(function(subRe) {
                    callback(subRe.data[0]);
                })
            });

        }

        function chart(api) {
            var defer = $q.defer(); // It also work without define defer because $q.all return promise already

            $http.get(api).then(function(re) {

                    // Use to represent X no the chart (Month Jan, Feb .....)
                    var oms_anual_sale = re.data
                    var labels = Object.getOwnPropertyNames(oms_anual_sale[0]).slice(1);

                    // Represent Y value on Chart ($2000, $1000)
                    var data2 = [];
                    var data = [];
                    for (var i = 0; i < re.data.length; i++) {
                        data2.push(Object.keys(re.data[i]).map(function(val, key) {
                            return re.data[i][val]
                        }));
                    }
                    for (i = 0; i < data2.length; i++) {
                        data.push(data2[i].slice(1));
                    }
                    //console.log(data)

                    // Represent series (Year 2014, 2015, 2016 )
                    var series = [];
                    for (i = 0; i < re.data.length; i++) {
                        series.push(re.data[i]['0']);
                    }
                    defer.resolve([data, labels, series]);
                })
                //console.log(defer.promise);
            return defer.promise;
        }

        return {
            scope: {
                scopeParam: '=', //camal case here but in the view hyphen case
            },
            //templateUrl: 'application/template/template.html',
            controller: controller
        }
    }
});
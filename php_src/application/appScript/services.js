'use strict';
var appServices = angular.module('appServices', []);
// DataApiService responsible for load info_data_tables
appServices.factory('DataApi', ['$location', '$http', '$q', '$filter', '$timeout','$state', function($location, $http, $q, $filter, $timeout,$state) {

    /*   
     * param1 is barcode
     * @data = saleDetials
     * saleDetails is saleDetailssss all in the records
     */

    // var appService = function (scopeName){
    //     //this.scopeName = scopeName;
    //     this.mainRecord = 'some';
        
    //     // getMainRecord: function (scope, mainUrl) {
    //     //     appService[scope] = {};
    //     //     appService[scope].mainRecord = mainUrl;
    //     // }
    //     this.getMainRecord = function(record){
    //         this.mainRecord = record;
    //         //return 
    //     }
    // }

    // return {
    //     appService: appService,
    // }

    
    




    // function tryCall (){
    //     var defer = $q.defer();
    //     var datare=[];
    //     $http.get('api/getInfo/spa_info_employee').then(function(re){
    //         //console.log(re.data)
    //         defer.resolve(re.data)
    //         angular.copy(re.data,datare)
    //     })
    //     //console.log(defer)
    //     return  datare
    // }
    
    function addGift(data, sale_id, employee, param1, param2, callback) {
        var addToArray = false
        if (data.length > 0) { //check if saleDetail is empty
            //if it is not empty search product according barcode
            for (var i = 0; i < data.length; i++) {
                if (data[i].therapist == parseInt(param1)) {
                    addToArray = true; // true mean product exist so no need to insert new in the other if condition 
                    var me = i;
                    var insertSaleDetail = JSON.parse(JSON.stringify(data[me])); // Use Json to clone copy object
                    //console.log(insertSaleDetail);
                    insertSaleDetail.duration = param2;
                    $http.post('api/updateInfo/spa_sale_comis_thera', insertSaleDetail).then(function(datas) {
                        if (datas.data[0].response == "Yes") {
                            callback(200, me)
                        }
                    });
                }
            }
        }
        if (!addToArray) { // if barcode iput(text) is not exist then add to saleDetail
            console.log("notYetexist");
            //var objOfPrice = $filter('getById')(employee, param1);
            $http.get('api/getLastId/spa_sale_comis_thera').then(function(respond) {
                //console.log(data);
                var add = {
                    id: respond.data[0].id + 1,
                    main_id: sale_id,
                    therapist: param1,
                    //price :objOfPrice.price, // todo to think about diference price
                    duration: param2,
                    number: data.length + 1
                        //discount: 0,
                        //therapist1: param2
                };
                //console.log($scope.add);
                $http.post('api/addInfo/spa_sale_comis_thera', add).
                then(function(respond) {
                    console.log(add)
                    if (respond.data[0].response == "Yes") {
                        callback(201, add)
                    }
                });
            });
        }
    };
    /*
     * insert new record to mysql first maybe date and time
     * then get the insert id and blank data for new record
     * set pageItems, currentPage, and call dataPaging
     */
    function addNewBooking(insertMainApi, getLastInfoApi,status, callback) {
        $http.post(insertMainApi, { gender: null, sale_status:status }).then(function(mainRe) {
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
        chart: chart,
        addGift: addGift,
        addNewBooking: addNewBooking
    }


}]);


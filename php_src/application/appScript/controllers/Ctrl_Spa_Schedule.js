'use strict';
appControllers.controller('spaScheduleCtrl', ['$scope', '$http', '$state', '$stateParams', '$location', '$rootScope', '$filter', '$timeout', 'DataRe', function($scope, $http, $state, $stateParams, $location, $rootScope, $filter, $timeout, DataRe) {

    $rootScope.pageTitle = 'Treatment Schedule';
    $scope.products = DataRe[0].data;
    $scope.activeSchedules = DataRe[1].data;
    $scope.activeSchedule = JSON.parse(JSON.stringify(DataRe[1].data));
    $scope.details = DataRe[2].data;
    //console.log($scope.details);


    $scope.dataFilter = function(date, activeSchedules) {
        //console.log(activeSchedules[0].date_treatment,date);
        if (date != null) {
            var datee = $filter('date')(date,'yyyy-MM-dd') + ' 00:00:00'
            var search = $filter('filter')(activeSchedules, { date_treatment: datee }, true);
            if (search.length) {
                $scope.activeSchedule = search;
                console.log(search);
                //return;
            } else {
                $scope.activeSchedule = []
                alert('There is no booking for ' + datee);
            }
        }
    }

    $scope.clearFilter = function(activeSchedules) {
        $scope.activeSchedule = JSON.parse(JSON.stringify(activeSchedules));
        $scope.myfilter = null;
    }

    $scope.mouseOver = function(index, details) {
        $scope.sliceDetails = $filter('filter')(details, { id: index }, true);
    }
    $scope.mouseLeave = function() {
        $scope.sliceDetails = [];
    }
    $scope.dateConv = function(d) {
        return Date.parse(d);
    };
    $scope.comboId = function(input, key) {
        //console.log(input);
        var selected = $filter('filter')(input, { id: parseInt(key) });
        return (key && selected.length) ? selected[0].name : '';
    }

}]);
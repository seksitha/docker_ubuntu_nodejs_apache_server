myApp.directive('typeAheadModel', function ($filter) { // this work only on ng-chage event ng-blure is not working
    'use strict';
    return {
        require: 'ngModel',
        scope: {
            employ: '='
        },
        link: function (scope, element, attrib, ngModelController) {
            //console.log(data);
            var input = angular.element($('#disabled, input, select').not('#cashier,#booker,.spa-menu-input'));
            //console.log(input);
            ngModelController.$parsers.push(function (data) { // invoke when user chage model
                //convert data from view format to model format
                //console.log('one',data);
                (data === '') ? input.prop('disabled', true) : input.prop('disabled', false);
                var filterReturn = $filter('filter')(scope.employ, { name: data }, true);
                return (filterReturn.length) ? filterReturn[0].id : null;
            });
            ngModelController.$formatters.push(function (data) { // invoke when read data from database, userChange and modelChange
                //convert data from model format to view format
                if (typeof (data) === 'number' || data === null) {
                    var filterReturn = $filter('filter')(scope.employ, { id: parseInt(data) }, true);
                    (data === 0 || data === null) ? input.prop('disabled', true) : input.prop('disabled', false);
                    //console.log('second',filterReturn);
                    return (typeof (filterReturn) !== 'undefined' && filterReturn.length) ? filterReturn[0].name : null;
                }
                if (typeof (data) === 'string') {
                    var filterReturn = $filter('filter')(scope.employ, { name: data }, true);
                    //console.log('third',filterReturn);
                    return (filterReturn.length) ? filterReturn[0].name : null;
                    (data === 0 || data === null) ? input.prop('disabled', true) : input.prop('disabled', false);
                }
            });
        }
    }

});

myApp.directive('dirSetModelvalue', function ($filter) { // this work only on ng-chage event ng-blure is not working
    'use strict';
    return {
        scope : {
            listData : "=",
            fieldFilter : "@"
        },
        require: '?ngModel',
        link: function (scope, element, attrib, ngModelController) {
            // console.log('mo');
            ngModelController.$formatters.push(function (modelValue) { // tricker when controller set value, user chose value which happen from UIB-controller set the value by controller;
                // console.log('mo',modelValue);
                // why this work to controller? it set viewvalue not model but it work :)
                // Ah when the viewvalue is set the $parsers is run and then it format the modelValue
                (typeof(modelValue)=='object')&&ngModelController.$setViewValue(modelValue); // shorthan if without else statement. set modelValue
                
                if (typeof (modelValue) != 'object') { // spa api return number as string so number need to NUM.toString()
                    // console.log(modelValue,scope.fieldFilter);
                    return (scope.listData) ? $filter('filter')(scope.listData, { id : modelValue.toString() }, true)[0][scope.fieldFilter] : modelValue; // this is  seting modelvalue
                }
                return (modelValue)?modelValue:undefined; // this is  seting viewValue
            });
            ngModelController.$parsers.push(function (viewValue) { //
                //(modelValue) && ngModelController.$setViewValue(modelValue.id);
                // console.log('view',viewValue)
                if (typeof (viewValue) == 'number') {
                    // console.log('view',viewValue)
                    //console.log(fieldFilter,modelValue,$filter('filter')(listData,{id:modelValue},true)[0]);
                    return $filter('filter')(scope.listData, { id: modelValue.toSring() }, true)[0][scope.fieldFilter]
                }
                return (viewValue)&&viewValue.id // this is setting modelValue
            });

        }
    }
})
myApp.directive('showDuringResolve', function ($rootScope) {
    // this is use to show spin while route resolve the data from server:
    return {
        link: function (scope, element) {

            element.addClass('ng-hide');

            var unregister = $rootScope.$on('$stateChangeStart', function () {
                element.removeClass('ng-hide');
            });

            scope.$on('$destroy', unregister);
        }
    };
});

myApp.directive('datePickerModel', function ($filter) {
    return {
        require: 'ngModel', //refer as data in link param

        link: function (scope, element, attrib, ngModel) {
            //console.log(ngModel2.$parsers);

            ngModel.$parsers.push(function (model) {
                //console.log(typeof(model));
                //console.log((model));
                var dateCon = Date.parse(model);
                //console.log(typeof(dateCon));
                var modelReturn = $filter('date')(dateCon, "yyyy-MM-dd HH:mm");
                //console.log(typeof(Date()));
                return new Date(modelReturn);

            });

            ngModel.$formatters.push(function (model) {

                var dateCon = Date.parse(model)
                var modelReturn = $filter('date')(dateCon, "dd-MMM-yyyy")
                //console.log(typeof(model))
                return (modelReturn.length) ? modelReturn : '';

            });
        }
    }

});

myApp.directive('timeModel', function ($filter) {
    return {
        require: 'ngModel', //refer as data in link param

        link: function (scope, element, attrib, ngModel) {

            ngModel.$formatters.push(function (model) {
                var dateCon;
                (model !== null) ? dateCon = new Date(model) : null;
                //console.log(dateCon);
                return (dateCon);
            });
        }
    }
});
//style-dynamic-table-commission
// ask stack overflow about directive="scope", directive scope="scope" wheat is the diferenct!

myApp.directive('phoneFormat', function($filter, $timeout) {
    var compile = function() {
        return {
            post: function(scope) {},
            pre: function(scope, element, attrib, ngModelController) {
                //console.log(attrib);
                console.log(attrib.testDir)
                ngModelController.$parsers.push(function(viewValue) {
                    //http://stackoverflow.com/questions/27105108/angularjs-prevent-input-on-textarea-when-character-limit-is-reached
                    //watch the view value not model value to stop at 12charactors
                    angular.element('.guide_phone').bind('keypress', function(e) {
                        if (element[0].value.length >= 12) {
                            e.preventDefault();
                            return false;
                        }
                    });
                    // minipulate view value and format model value
                    if (attrib.class == 'guide_phone form-control') {
                        // converting viewValue to desire format for model to store
                        var string = viewValue.replace(/\D/g, ''),
                            phone = string.replace(/(\d{1,10})/, '$1');
                        // formating the viewValue at real time base on model format
                        element.val($filter('phoneFormat')(phone));
                        if (viewValue.length) return phone;
                        return null; // return to the model
                    }
                    return viewValue; //this is not need because not all model change at the same time
                });
                ngModelController.$formatters.unshift(function(modelValue) {

                    if (attrib.class == 'guide_phone form-control' || attrib.class === 'guide_phone') {
                        //console.log($filter('phoneFormat')(modelValue))
                        return viewValue = $filter('phoneFormat')(modelValue);
                    }
                    if (attrib.class == 'amount form-control' || attrib.class === 'amount') {
                        return viewValue = $filter('currency')(parseFloat(modelValue), "$", 2);
                    }
                    return modelValue; //return to the viewValue
                })
            }
        }
    }

    return {
        require: 'ngModel',
        compile: compile
    }
});
myApp.directive('spanFormat', function($filter, $timeout) {
    var compile = function() {
        return {
            post: function(scope) {},
            pre: function(scope, element, attrib, ngModelController) {

                ngModelController.$formatters.push(function(data) {
                    (parseFloat(data.amount)) ? data.amount = $filter('currency')(parseFloat(data.amount), "$", 2): 1;
                    data.guide_phone = $filter('phoneFormat')(data.guide_phone);
                    return data;
                })
            }
        }
    }

    return {
        require: '?ngModel',
        compile: compile
    }
});



myApp.directive('typeAheadModel', function($filter) { // this work only on ng-chage event ng-blure is not working
    'use strict';
    return {
        require: 'ngModel',
        scope: {
            employ: '=',
            sale: '='
        },
        link: function(scope, element, attrib, ngModelController) {
            var input = angular.element($('#disabled, input, select').not('#cashier,#booker'));


            ngModelController.$formatters.push(function(modelValue) {
                if (typeof(modelValue) === 'number' || modelValue === null) {
                    var filterReturn = $filter('filter')(scope.employ, { id: parseInt(modelValue) }, true);

                    (modelValue === 0 || modelValue === null) ? input.prop('disabled', true): input.prop('disabled', false);

                    return (typeof(filterReturn) !== 'undefined' && filterReturn.length) ? filterReturn[0].name : null;
                }
                if (typeof(modelValue) === 'string') {
                    (modelValue === 0 || modelValue === null) ? input.prop('disabled', true): input.prop('disabled', false);
                    var filterReturn = $filter('filter')(scope.employ, { name: modelValue }, true);

                    return (filterReturn.length) ? filterReturn[0].name : null;
                }
            });
        }
    }

});
myApp.directive('showDuringResolve', function($rootScope) {
    // this is use to show spin while route resolve the data from server:
    return {
        link: function(scope, element) {

            element.addClass('ng-hide');

            var unregister = $rootScope.$on('$stateChangeStart', function() {
                element.removeClass('ng-hide');
            });

            scope.$on('$destroy', unregister);
        }
    };
});

myApp.directive('datePickerModel', function($filter) {
    return {
        require: 'ngModel', //refer as data in link param

        link: function(scope, element, attrib, ngModel) {
            //console.log(ngModel2.$parsers);

            ngModel.$parsers.push(function(model) {
                //console.log(typeof(model));
                //console.log((model));
                var dateCon = Date.parse(model);
                //console.log(typeof(dateCon));
                var modelReturn = $filter('date')(dateCon, "yyyy-MM-dd HH:mm");
                //console.log(typeof(Date()));
                return new Date(modelReturn);

            });

            ngModel.$formatters.push(function(model) {

                var dateCon = Date.parse(model)
                var modelReturn = $filter('date')(dateCon, "dd-MMM-yyyy")
                    //console.log(typeof(model))
                return (modelReturn.length) ? modelReturn : '';

            });
        }
    }

});

myApp.directive('timeModel', function($filter) {
    return {
        require: 'ngModel', //refer as data in link param

        link: function(scope, element, attrib, ngModel) {

            ngModel.$formatters.push(function(model) {
                var dateCon;
                (model !== null) ? dateCon = new Date(model): null;
                //console.log(dateCon);
                return (dateCon);
            });
        }
    }
});
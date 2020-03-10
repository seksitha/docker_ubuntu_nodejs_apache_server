myApp.filter('phoneFormat', function () {
    return function (text) {
        //(text!==null)? text = text.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1-"):null;
        if(text && text.length < 7){
            (text!==null)? text = text.toString().replace( /(\d{3})(\d+)/g, "$1-$2"):null;
        } else if (text && text.length>6){
            (text!==null)? text = text.toString().replace( /(\d{3})(\d{3})(\d+)/g, "$1-$2-$3"):null;
        }
        
        //var t = text + '<span class="desc">,00</span><span class="cur">€</span>';
        return text;
    };
});
myApp.filter('currencyFormat', function () {
    return function (text) {
        (text!==null)? text = text.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1"):null;
        var t = '$'+text;
        return t;
    };
});
myApp.filter('capitalize', function() {
    return function(input) {
        return input.charAt(0).toUpperCase() + input.substr(1).toLowerCase();
    }
});

myApp.filter("betweenDate", function() {
    return function(items, from, to) {
        var df = parseDate(from);
        var dt = parseDate(to);
        var result = [];
        for (var i = 0; i < items.length; i++) {
            var tf = new Date(items[i].date1 * 1000),
                tt = new Date(items[i].date2 * 1000);
            if (tf > df && tt < dt) {
                result.push(items[i]);
            }
        }
        return result;
    };
});
myApp.filter('startFrom', function() {
    return function(input, start) {
        if (input) {
            start = +start; //parse to int
            return input.slice(start);
        }
    }
});
myApp.filter('iif', function() {
    return function(input) {
        if (input == employee) {
            return '"s.value as s.text for s in employees"';
        }
    };
});
myApp.filter('getById', function() {
    return function(input, id) {
        var i = 0,
            len = input.length;
        for (; i < len; i++) {
            if (+input[i].id == +id) {
                return input[i];
            }
        }
        return null;
    }
});
myApp.filter('percentage', ['$filter', function($filter) {
    return function(input, decimals) {
        return $filter('number')(input * 1, decimals) + '%';
    };
}]);

myApp.filter('totalSumPriceQty', function() {
    return function(data, key1, keydisc, key2) {
        if (typeof(data) === 'undefined' && typeof(key1) === 'undefined' &&
            typeof(key2) === 'undefined' && typeof keydisc === 'undefined') {
            return 0;
        }
        var sum = 0;
        if (typeof(data) === 'undefined') {

        } else {
            for (var i = 0; i < data.length; i++) {
                sum = sum + (parseFloat(data[i][key1]) * ((100 - parseFloat(data[i][keydisc])) / 100) * parseFloat(data[i][key2]));
            }
            return sum;
        }
    }
});
myApp.filter('subTotal', function() {
    return function(data, key1) {
        if (typeof(data) === 'undefined') {
            return 0;
        }

        var sum = val = 0;

        for (var i = 0; i < data.length; i++) {
            if (typeof(data[i][key1]) == 'number') {
                val = parseFloat(data[i][key1]);
                sum = sum + val;
            }else if (typeof(data[i][key1])=='string'){
                val = data[i][key1].substring(1) ;
                //console.log(data[i][key1])
                sum = sum + parseFloat(val);
            }      
        }
        return sum;
    }
});
myApp.filter('subTotalNoDollar', function() {
    return function(data, key1) {
        if (typeof(data) === 'undefined') {
            return 0;
        }

        var sum = val = 0;

        for (var i = 0; i < data.length; i++) {
            if (typeof(data[i][key1]) == 'number') {
                val = parseFloat(data[i][key1]);
                sum = sum + val;
            }else if (typeof(data[i][key1])=='string'){
                val = data[i][key1] ;
                //console.log(data[i][key1])
                sum = sum + parseFloat(val);
            }      
        }
        return sum;
    }
});
myApp.filter('sumOfValue', function() {
    return function(data, key) {
        if (typeof(data) === 'undefined' && typeof(key) === 'undefined') {
            return 0;
        }
        var sum = 0;
        for (var i = 0; i < data.length; i++) {
            sum = sum + parseInt(data[i][key]);
        }
        return sum;
    }
});
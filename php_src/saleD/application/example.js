var app = angular.module("Foo", []);

app.controller("Page", function($scope) {
  $scope.components = [
    {type: "rich_text", title: "Rich Text"},
    {type: "video", title: "Video"}
  ];
});

app.directive("tabs", function($compile) {
  return {
    restrict: "E",
    transclude: true,
    scope: true,
    template: $("#nav-tabs\\.html").html(),
    controller: function($scope, $element) {
      var panes = $scope.panes = [];
      
      $scope.switch_tab = function(pane) {
        console.log("switch tab");
        console.log(pane.mode);
        
        $scope.select(pane);
      };
      
      $scope.select = function(pane) {
        angular.forEach(panes, function(pane) {
          pane.selected = false;
        });
        pane.selected = true;
      };
      
      this.add_panes = function(pane) {
        if (panes.length === 0) $scope.select(pane);
        panes.push(pane);
      };
    },
    link: function(scope, element, attrs) {
      console.log("linking tabs");
    }
  };
});

app.directive("pane", function($compile) {
  return {
    restrict: "E",
    transclude: true,
    require: "^tabs",
    scope: {icon: "@iconPng", mode: "@"},
    template: "<div ng-transclude ng-show='selected'></div>",
    link: function(scope, element, attrs, tabsCtrl) {
      tabsCtrl.add_panes(scope);
    },
    replace: true
  };
});

app.directive("pageComponent", function($compile) {
  var template_for = function(type) {
    return type+"\\.html";
  };
  
  return {
    restrict: "E",
    // transclude: true,
    scope: true,
    compile: function(element, attrs) {
      return function(scope, element, attrs) {
        var tmpl = template_for(scope.component.type);
        element.html($("#"+tmpl).html()).show();
        $compile(element.contents())(scope);
      };
    }
  };
});

app.directive("pageComponentForm", function($compile) {
  return {
    restrict: "E",
    template: $("#page-component-form\\.html").html()
  };
});
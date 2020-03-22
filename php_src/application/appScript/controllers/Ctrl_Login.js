myApp.controller("loginCtrl", [
	"$scope",
	"$http",
	"$location",
	"$timeout",
	function($scope, $http, $location, $timeout) {
		$scope.username = "";
		$scope.password = "";

		$scope.login = function(event,user, pass) {
      event.preventDefault()
      console.log($http)

			$http.post("api/login", { username: user, password: pass }).then(
				function() {
					$location.path("/report_spa");
				},
				function() {
					//$location.path('/login')
					$scope.alertLogin = false;
					$timeout(function() {
						$scope.alertLogin = true;
					}, 500);
				}
      );
      
		};
	},
]);

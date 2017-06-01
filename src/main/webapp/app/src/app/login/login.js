angular.module( 'ngBoilerplate.login', ['authSharedService'])


.config(function config( $stateProvider ) {
  $stateProvider.state( 'login', {
    url: '/login',
    views: {
      "main": {
        controller: 'LoginCtrl',
        templateUrl: 'login/login.tpl.html'
      }
    },
    data:{ pageTitle: 'Ingresar' }
  });
})



.controller( 'LoginCtrl', function LoginController( $rootScope, $scope, authSharedService ) {

      $scope.rememberMe = true;
      $scope.credentials = {};

     $scope.login = function() {
        $rootScope.authenticationError = false;
        authSharedService.login($scope.credentials.username, $scope.credentials.password, $scope.rememberMe);

     };
});


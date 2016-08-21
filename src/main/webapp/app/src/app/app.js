angular.module( 'ngBoilerplate', [
  'templates-app',
  'templates-common',
  'ngBoilerplate.home',
  'ngBoilerplate.about',
  'ngBoilerplate.carList',
  'ngBoilerplate.carDetails',
  'ngBoilerplate.clientList',
  'ngBoilerplate.clientDetails',
  'ngBoilerplate.newClient',
  'ngBoilerplate.newCar',
  'ngBoilerplate.sellCar',
  'ngBoilerplate.reserveCar',
  'ngBoilerplate.insuranceQuote',
  'ui.router',
  'ngAnimate',
  'flow',
  'ui.bootstrap',
  'LocalStorageModule',
  'ngResource',
  'ngFileUpload',
  'ngImgCrop',
  'ui.utils.masks'

])

.config(['localStorageServiceProvider', function(localStorageServiceProvider) {
  localStorageServiceProvider.setPrefix('ls');
}])

.config( function myAppConfig ( $stateProvider, $urlRouterProvider ) {
  $urlRouterProvider.otherwise( '/home' );
})

.run( function run () {
})

.controller( 'AppCtrl', function AppCtrl ( $scope, $location ) {

  $scope.$on('$stateChangeSuccess', function(event, toState, toParams, fromState, fromParams){
    if ( angular.isDefined( toState.data.pageTitle ) ) {
      $scope.pageTitle = toState.data.pageTitle + ' | Mi Agencia Virtual' ;
    }
  });



  // Sidebar
  $scope.state = false;
    
  $scope.toggleState = function() {
      $scope.state = !$scope.state;
  };

})

.directive('sidebarDirective', function() {
    return {
        link : function(scope, element, attr) {
            scope.$watch(attr.sidebarDirective, function(newVal) {
                  if(newVal)
                  {
                    element.addClass('show'); 
                    return;
                  }
                  element.removeClass('show');
            });
        }
    };
})




.filter('infoAutoCompletarCeros', function() {

      return function completar (input) {

                // TODO chequear tambien que el numero de entrada sea por lo menos de cinco digitos
                if (isNaN(input) || input.length < 4) {
                              return input;
                } else {

                       // completar con ceros
                       if (input.toString().length == 5) {

                                return '00' + input;

                       } else if (input.toString().length == 6) {

                                return '0' + input;

                       } else if (input.toString().length  > 6) {

                                return + input;
                       }
                }
      };
}) 

;


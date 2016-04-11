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
  'ui.router',
  'ngAnimate',
  'flow',
  'ui.bootstrap',
  'LocalStorageModule',
  'ngResource',
  'ngFileUpload',
  'ngImgCrop'

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
      $scope.pageTitle = toState.data.pageTitle + ' | Mi Agencia' ;
    }
  });
})

;


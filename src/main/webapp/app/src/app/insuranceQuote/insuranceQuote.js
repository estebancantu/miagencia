angular.module( 'ngBoilerplate.insuranceQuote', [
  'ui.router',
  'vehicleService'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'insuranceQuote', {
    url: '/insuranceQuote',
    views: {
      "main": {
        controller: 'InsuranceQuoteCtrl',
        templateUrl: 'insuranceQuote/insuranceQuote.tpl.html'
      }
    },
    data:{ pageTitle: 'Cotizacion' }
  });
})

.controller( 'InsuranceQuoteCtrl', function InsuranceQuoteController( $scope, vehicleService ) {


	$scope.testMessage = 'Prueba';

})

;
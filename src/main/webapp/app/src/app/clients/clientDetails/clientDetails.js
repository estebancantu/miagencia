angular.module( 'ngBoilerplate.clientDetails', [
  'ui.router',
  'placeholders',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'clientDetails', {
    url: '/clientDetails/:clientId',
    views: {
      "main": {
        controller: 'ClientDetailsCtrl',
        templateUrl: 'clients/clientDetails/clientDetails.tpl.html'
      } 
    },
    data:{ pageTitle: 'Cliente' }
  });
})

.controller( 'ClientDetailsCtrl', function ClientDetailsCtrl( $scope, $stateParams, clientService ) {
 
 
  $scope.client = clientService.get({id: $stateParams.clientId});

     

});
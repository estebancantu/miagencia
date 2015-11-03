angular.module( 'ngBoilerplate.newClient', [
  'ui.router',
  'plusOne'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'newClient', {
    url: '/newClient',
    views: {
      "main": {
        controller: 'newClientCtrl',
        templateUrl: 'clients/newClient/newClient.tpl.html'
      } 
    },
    data:{ pageTitle: 'Nuevo Cliente' }
  });
})


.controller( 'newClientCtrl', function AboutCtrl( $scope ) {
  // This is simple a demo for UI Boostrap.

})

;
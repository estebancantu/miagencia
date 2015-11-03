angular.module( 'ngBoilerplate.clientDetails', [
  'ui.router',
  'placeholders',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'clientDetails', {
    url: '/clientDetails',
    views: {
      "main": {
        controller: 'ClientDetailsCtrl',
        templateUrl: 'clients/clientDetails/clientDetails.tpl.html'
      } 
    },
    data:{ pageTitle: 'Cliente' }
  });
})

.controller( 'ClientDetailsCtrl', function ClientDetailsCtrl( $scope ) {
  // This is simple a demo for UI Boostrap.
  $scope.dropdownDemoItems = [
    "The first choice!",
    "And another choice for you.",
    "but wait! A third!"
  ];
})

;
angular.module( 'ngBoilerplate.clientList', [
  'ui.router',
  'placeholders',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'clientList', {
    url: '/clientList',
    views: {
      "main": {
        controller: 'ClientListCtrl',
        templateUrl: 'clients/clientList/clientList.tpl.html'
      } 
    },
    data:{ pageTitle: 'Mis Clientes' }
  });
})

.controller( 'ClientListCtrl', function ClientListCtrl( $scope ) {
  // This is simple a demo for UI Boostrap.
  $scope.dropdownDemoItems = [
    "The first choice!",
    "And another choice for you.",
    "but wait! A third!"
  ];
})

;
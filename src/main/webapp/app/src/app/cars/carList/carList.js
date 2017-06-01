angular.module( 'ngBoilerplate.carList', [
  'ui.router',
  'ui.router',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'carList', {
    url: '/carList',
    views: {
      "main": {
        controller: 'CarListCtrl',
        templateUrl: 'cars/carList/carList.tpl.html'
      } 
    },
    data:{ pageTitle: 'Mis Autos' }
  });
})

.controller( 'CarListCtrl', function CarListCtrl( $scope ) {
  // This is simple a demo for UI Boostrap.
  $scope.dropdownDemoItems = [
    "The first choice!",
    "And another choice for you.",
    "but wait! A third!"
  ];
})

;
angular.module( 'ngBoilerplate.carDetails', [
  'ui.router',
  'placeholders',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'carDetails', {
    url: '/carDetails',
    views: {
      "main": {
        controller: 'carDetailsCtrl',
        templateUrl: 'cars/carDetails/carDetails.tpl.html'
      } 
    },
    data:{ pageTitle: 'Detalles' }
  });
})

.controller( 'carDetailsCtrl', function carDetailsCtrl( $scope ) {
  // This is simple a demo for UI Boostrap.
 
  $scope.setInterval=5000;

  $scope.slides = [
  {
    title:'Titulo uno',
    image:'assets/img/foto1.jpg',
    text:'Texto de prueba'
  },
  {
    title:'Titulo uno',
    image:'assets/img/foto2.jpg',
    text:'Texto de prueba'
  },
  {
    title:'Titulo uno',
    image:'assets/img/foto3.jpg',
    text:'Texto de prueba'
  }

  ];

})

;

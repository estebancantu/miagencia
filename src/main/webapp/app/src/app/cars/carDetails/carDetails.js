angular.module( 'ngBoilerplate.carDetails', [
  'ui.router',
  'placeholders',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'carDetails', {
    url: '/carDetails/:carId',
    views: {
      "main": {
        controller: 'carDetailsCtrl',
        templateUrl: 'cars/carDetails/carDetails.tpl.html'
      } 
    },
    data:{ pageTitle: 'Detalles' }
  });
})

.controller( 'carDetailsCtrl', function carDetailsCtrl( $scope, $stateParams, vehicleService ) {

 
  $scope.setInterval=5000;
  $scope.slides = [];

  $scope.carDetailsDto = vehicleService.get({id: $stateParams.carId}, function(response) {

      $scope.slides.push({image: response.vehicleDto.imageUrl});
      $scope.slides.push({image: 'assets/img/logo.png'});
  });


})

;

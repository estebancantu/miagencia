angular.module( 'ngBoilerplate.reserveCar', [
  'ui.router',
  'clientService',
  'vehicleService'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'reserveCar', {
    url: '/reserveCar/:carId',
    views: {
      "main": {
        controller: 'reserveCarCtrl',
        templateUrl: 'cars/reserveCar/reserveCar.tpl.html'
      } 
    },
    data:{ pageTitle: 'Reservar Auto' }
  });
})


.controller( 'reserveCarCtrl', function AboutCtrl( $scope, $http, clientService, $stateParams, vehicleService) {



  $scope.carDetailsDto = vehicleService.get({id: $stateParams.carId});
  $scope.selectedClientId = null;
  $scope.advancePayment = null;
  $scope.daysOnHold = null;


  $scope.clientList = clientService.query();



  // Saves new reservation
  $scope.reserveCar = function () {

    // levantar el sale price del auto que salio de la pagina anterior. aca se tiene que poder
    // modificar

    var reserveVehicleRequestDto = {

      vehicleId: $scope.carDetailsDto.vehicleDto.id,
      clientId: $scope.selectedClientId,
      advancePayment: $scope.advancePayment,
      daysOnHold: $scope.daysOnHold

    };





    $http({
                method: 'POST',
              //  url: 'http://localhost:8080/miagencia/api/operations/reserveVehicle/',
                url: 'http://www.miagenciavirtual.com.ar:8080/miagencia/api/operations/reserveVehicle/',
                data: reserveVehicleRequestDto,
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "text/plain"
                }
            })
    .then(function (response) {
                if (response.status == 200) {
                    $scope.login($scope.vm.userName, $scope.vm.password);
                }
                else {
                  /*  $scope.vm.errorMessages = [];
                    $scope.vm.errorMessages.push({description: response.data}); */
                    console.log("failed operation creation: " + response.data);
                }
            });

  };



})

;

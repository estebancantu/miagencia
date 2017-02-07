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


.controller( 'reserveCarCtrl', function AboutCtrl( $scope, $http, clientService, $stateParams, vehicleService, $uibModal, $location, SERVER_URL, CDN_URL) {


  $scope.disablePrintLink = true;
  $scope.locationService = $location;
  $scope.imageUrl = " ";

  $scope.reservationForm = CDN_URL + "forms/reservation-form.pdf";

  $scope.carDetailsDto = vehicleService.get({id: $stateParams.carId}, function(response) {

          $scope.imageUrl = response.vehicleDto.imageUrls[0];

    });


  //$scope.reserveForm = CDN_URL + "forms/reserve-form.jpg";
  $scope.reserveForm = 'http://www.miagenciavirtual.com.ar:8080/miagencia/file/receipt/'+$stateParams.carId;
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
                url: SERVER_URL + 'operations/reserveVehicle/',
                data: reserveVehicleRequestDto,
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "text/plain"
                }
            })
    .then(function (response) {

                if (response.status == 201) {
                    $scope.disablePrintLink = false;
                    $scope.locationService.path('/home');
                    $scope.saveSuccessModal();

                }
                else {
                  /*  $scope.vm.errorMessages = [];
                    $scope.vm.errorMessages.push({description: response.data}); */
                    console.log("failed operation creation: " + response.data);
                }
            });

  };




      $scope.cancelModal = function () {

      var modalInstance = $uibModal.open({
        animation: true,
        templateUrl: 'cancelConfirmationModal.html',
        controller: 'cancelConfirmationModalInstanceCtrl'
      });
    };


        $scope.saveSuccessModal = function () {

      var modalInstance = $uibModal.open({
        animation: true,
        templateUrl: 'saveSuccessModal.html',
        controller: 'saveSuccessModalInstanceCtrl'
      });
    };




})

;

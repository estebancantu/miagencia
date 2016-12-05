angular.module( 'ngBoilerplate.sellCar', [
  'ui.router',
  'clientService',
  'vehicleService'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'sellCar', {
    url: '/sellCar/:carId',
    views: {
      "main": {
        controller: 'sellCarCtrl',
        templateUrl: 'cars/sellCar/sellCar.tpl.html'
      } 
    },
    data:{ pageTitle: 'Vender Auto' }
  });
})


.controller( 'sellCarCtrl', function AboutCtrl( $scope, $http, clientService, $stateParams, vehicleService, $uibModal, $location, SERVER_URL, CDN_URL) {


  $scope.disablePrintLink = true;

  $scope.carDetailsDto = vehicleService.get({id: $stateParams.carId}, function(result) {

      $scope.salePrice = result.sellingPrice;
       $scope.imageUrl = result.vehicleDto.imageUrls[0];

  });

  $scope.selectedBuyerId = null;


  $scope.sellForm =  'http://www.miagenciavirtual.com.ar:8080/miagencia/file/receipt/'+$stateParams.carId;

  $scope.buyerList = clientService.query();



    $scope.locationService = $location;


  // Saves new sale
  $scope.sellCar = function () {



    var sellVehicleRequestDto = {

      vehicleId: $scope.carDetailsDto.vehicleDto.id,
      buyerId: $scope.selectedBuyerId,

      paidAmount: $scope.salePrice,
      paymentType: "CASH"

    };





    $http({
                method: 'POST',
                url: SERVER_URL + 'operations/sellVehicle/',
                data: sellVehicleRequestDto,
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

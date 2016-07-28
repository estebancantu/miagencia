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


.controller( 'sellCarCtrl', function AboutCtrl( $scope, $http, clientService, $stateParams, vehicleService) {


  $scope.carDetailsDto = vehicleService.get({id: $stateParams.carId}, function(result) {

      $scope.salePrice = result.sellingPrice;

  });
  $scope.selectedBuyerId = null;


  $scope.buyerList = clientService.query();



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
              //  url: 'http://localhost:8080/miagencia/api/operations/sellVehicle/',
                url: 'http://miagenciavirtual.com.ar:8080/miagencia/api/operations/sellVehicle/',
                data: sellVehicleRequestDto,
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

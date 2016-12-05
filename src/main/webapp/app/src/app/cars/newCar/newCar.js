angular.module('ngBoilerplate.newCar', [
  'ui.router',
  'makeAndModelsServices',
  'clientService',
  'vehicleService',
  'ngFileUpload',
  'ngImgCrop'

])

.config(function config($stateProvider) {
  $stateProvider.state('newCar', {
    url: '/newCar/:carId',
    views: {
      "main": {
        controller: 'newCarCtrl',
        templateUrl: 'cars/newCar/newCar.tpl.html'
      }
    },
    data: {
      pageTitle: 'Nuevo Auto'
    }
  });
})


.controller('newCarCtrl', function AboutCtrl($scope, $http, MakesAndModels, clientService, vehicleService, Upload, $timeout, $uibModal, $location, $stateParams, SERVER_URL, CDN_URL) {



  // Initializations

  $scope.cars = [];

  $scope.locationService = $location;

  $scope.newCar = null;

  $scope.carIsNew = true;

  if( $stateParams.carId !== "" ) {

      $scope.newCar = vehicleService.get({id:$stateParams.carId} );
      $scope.carIsNew = false;

  }



  $scope.seller = null;

  $scope.opType = 'BUY';

  $scope.showSpinner = true;  

  MakesAndModels.query(function(data) {

      $scope.availableVehicles = data;
      $scope.showSpinner = false;

  });




  $scope.vehicleConditions = [
    "Nuevo", 
    "Usado"

  ];

  $scope.fuelTypes = [
    "Nafta",
    "Diesel",
    "Nafta/GNC",
    "No especificada"
  ];

  $scope.doors = [
    "2",
    "3",
    "4",
    "5"
  ];

  $scope.colors = [
    "Blanco",
    "Negro",
    "Gris",
    "Rojo",
    "Azul",
    "Verde",
    "Amarillo",
    "Otros"
  ];

  $scope.years = [
    "2016",
    "2015",
    "2014",
    "2013",
    "2012",
    "2011",
    "2010",
    "2009",
    "2008",
    "2007",
    "2006",
    "2005",
    "2004",
    "2003",
    "2002",
    "2001",
    "2000",
    "1999",
    "1998",
    "1997",
    "1996",
    "1995",
    "1994",
    "1993",
    "1992",
    "1991"

  ];

  $scope.transmissionTypes = [
    "Automatica",
    "Manual",
    "No especificada"
  ];

  $scope.clientList = clientService.query();



  $scope.imageUrl = [];

  

  // Saves new car
  $scope.saveNewCar = function() {


    $scope.newCar.model = $scope.newCar.model.id;
    $scope.newCar.make = $scope.newCar.make.id;
    $scope.newCar.vehicleType = $scope.newCar.vehicleType.name;


    var newVehicleRequestDto = {

                vehicleDto: $scope.newCar,
                clientId: $scope.selectedClientId,
                operationType: $scope.opType,
                dealPrice: $scope.dealPrice,
                sellingPrice: $scope.sellingPrice,
                // paymentType, falta implementar
                hasRegistration: $scope.hasRegistration,
                hasDomainCertificate: $scope.hasDomainCertificate,
                paymentType: "CASH",
                taxDebt: $scope.taxDebt,
                trafficTicketsDebt: $scope.trafficTicketsDebt
        
    };

    // Si no se subio ninguna imagen para ese vehiculo, poner una imagen por defecto
    if ($scope.imageUrl.length === 0) {

      $scope.imageUrl.push(CDN_URL + "imagen-default.jpg");
    }


    newVehicleRequestDto.vehicleDto.imageUrls = $scope.imageUrl;


    $http({
        method: 'POST',
        url:  SERVER_URL + 'operations/buyVehicle/',
        data: newVehicleRequestDto,
        headers: {
          "Content-Type": "application/json",
          "Accept": "text/plain"
        }
      })
      .then(function(response) {

        if (response.status == 201) { 

                $scope.locationService.path('/home');
                $scope.saveSuccessModal();

        } else {

            // TODO aca tiene que abrir modal que muestre que hubo un error
          /*  $scope.vm.errorMessages = [];
            $scope.vm.errorMessages.push({description: response.data}); */
          console.log("failed operation creation: " + response.statusText);
        }
      });



  };




  $scope.upload = function(dataUrl, name) {
    Upload.upload({
      method: 'POST',
      url: CDN_URL + 'upload/',
      // url: 'http://www.miagenciavirtual.com.ar:8080/miagencia/pics/upload/',
      data: {
        name: name,
        file: Upload.dataUrltoBlob(dataUrl, name)
      }
    }).then(function(response) {

      image = CDN_URL + response.data.imageUrl;
      $scope.imageUrl.push(image);
     // $scope.imageUrl = 'http://localhost:8080/miagencia/pics/' + response.data.imageUrl;
      // $scope.imageUrl = 'http://www.miagenciavirtual.com.ar:8080/miagencia/pics/' + response.data.imageUrl;


    }, function(response) {
      if (response.status > 0) {
        $scope.errorMsg = response.status + ': ' + response.data;
      }
    }, function(evt) {
      $scope.progress = parseInt(100.0 * evt.loaded / evt.total, 10);
    });
  };



    $scope.animationsEnabled = true;





    $scope.cancelModal = function () {

      var modalInstance = $uibModal.open({
        animation: $scope.animationsEnabled,
        templateUrl: 'cancelConfirmationModal.html',
        controller: 'cancelConfirmationModalInstanceCtrl'
      });
    };


        $scope.saveSuccessModal = function () {

      var modalInstance = $uibModal.open({
        animation: $scope.animationsEnabled,
        templateUrl: 'saveSuccessModal.html',
        controller: 'saveSuccessModalInstanceCtrl'
      });
    };


});










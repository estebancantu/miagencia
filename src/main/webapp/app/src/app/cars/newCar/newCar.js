angular.module('ngBoilerplate.newCar', [
  'ui.router',
  'makeAndModelsServices',
  'clientService',
  'ngFileUpload',
  'ngImgCrop'

])

.config(function config($stateProvider) {
  $stateProvider.state('newCar', {
    url: '/newCar',
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


.controller('newCarCtrl', function AboutCtrl($scope, $http, MakesAndModels, clientService, Upload, $timeout) {


  $scope.cars = [];

  $scope.newCar = null;
  $scope.seller = null;

  $scope.opType = 'buy';


  $scope.availableVehicles = MakesAndModels.query();



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


    newVehicleRequestDto.vehicleDto.imageUrl = $scope.imageUrl;



    $http({
        method: 'POST',
       // url: 'http://localhost:8080/miagencia/api/operations/buyVehicle/',
        url: 'http://miagenciavirtual.com.ar:8080/miagencia/api/operations/buyVehicle/',
        data: newVehicleRequestDto,
        headers: {
          "Content-Type": "application/json",
          "Accept": "text/plain"
        }
      })
      .then(function(response) {
        if (response.status == 200) {
          $scope.login($scope.vm.userName, $scope.vm.password);
        } else {
          /*  $scope.vm.errorMessages = [];
            $scope.vm.errorMessages.push({description: response.data}); */
          console.log("failed operation creation: " + response.data);
        }
      });



  };





  $scope.upload = function(dataUrl, name) {
    Upload.upload({
      method: 'POST',
     // url: 'http://localhost:8080/miagencia/pics/upload/',
      url: 'http://miagenciavirtual.com.ar:8080/miagencia/pics/upload/',
      data: {
        name: name,
        file: Upload.dataUrltoBlob(dataUrl, name)
      }
    }).then(function(response) {
    //  $scope.imageUrl = 'http://localhost:8080/miagencia/pics/' + response.data.imageUrl;
      $scope.imageUrl = 'http://miagenciavirtual.com.ar:8080/miagencia/pics/' + response.data.imageUrl;


    }, function(response) {
      if (response.status > 0) {
        $scope.errorMsg = response.status + ': ' + response.data;
      }
    }, function(evt) {
      $scope.progress = parseInt(100.0 * evt.loaded / evt.total, 10);
    });
  };





})

;
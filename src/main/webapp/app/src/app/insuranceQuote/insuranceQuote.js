angular.module( 'ngBoilerplate.insuranceQuote', [
  'ui.router',
  'makeAndModelsServices',
    'vehicleService'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'insuranceQuote', {
    url: '/insuranceQuote/:carId',
    views: {
      "main": {
        controller: 'InsuranceQuoteCtrl',
        templateUrl: 'insuranceQuote/insuranceQuote.tpl.html'
      }
    },
    data:{ pageTitle: 'Cotizacion' }
  });
})

.controller( 'InsuranceQuoteCtrl', function InsuranceQuoteController( $scope,  $stateParams,   vehicleService, MakesAndModels ) {


        $scope.vehicle = {
                    vehicleType:"",
                    vehicleMake:"",
                    vehicleModel:"",
                    year:""
        };

        $scope.availableVehicles = MakesAndModels.query( function( av) {


                         if ($stateParams.carId !== "" ) {

                                              $scope.vehicleDetailsDto = vehicleService.get({id: $stateParams.carId}, function(result) {


                                                      for(var j = 0;  j  < av.length;  j++ ) {

                                                            if (av[j].name === result.vehicleDto.vehicleType) {

                                                                        $scope.vehicle.vehicleType = av[j];
                                                            }
                                                      }


                                                      for(var k = 0;  k < $scope.vehicle.vehicleType.makes.length ; k++) {

                                                          if($scope.vehicle.vehicleType.makes[k].id === result.vehicleDto.make) {

                                                                        $scope.vehicle.vehicleMake = $scope.vehicle.vehicleType.makes[k];
                                                          }

                                                      }



                                                      for(var l = 0;  l < $scope.vehicle.vehicleMake.models.length ; l++) {

                                                          if($scope.vehicle.vehicleMake.models[l].id === result.vehicleDto.model) {

                                                                        $scope.vehicle.vehicleModel = $scope.vehicle.vehicleMake.models[l];
                                                          }

                                                      }

                                                      $scope.vehicle.year = result.vehicleDto.year.toString();


                                              });
                        }

        });



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



})

;
angular.module( 'ngBoilerplate.insuranceQuote', [
  'ui.router',
  'makeAndModelsServices'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'insuranceQuote', {
    url: '/insuranceQuote',
    views: {
      "main": {
        controller: 'InsuranceQuoteCtrl',
        templateUrl: 'insuranceQuote/insuranceQuote.tpl.html'
      }
    },
    data:{ pageTitle: 'Cotizacion' }
  });
})

.controller( 'InsuranceQuoteCtrl', function InsuranceQuoteController( $scope, MakesAndModels ) {


          $scope.availableVehicles = MakesAndModels.query();


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
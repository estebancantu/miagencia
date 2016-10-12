var makesAndModelsServices = angular.module('makeAndModelsServices', ['ngResource', 'ngBoilerplate']);

makesAndModelsServices.factory('MakesAndModels', ['$resource', 'SERVER_URL',
  function($resource, SERVER_URL){
    return $resource(SERVER_URL + 'makesAndModels/');
  }]);

makesAndModelsServices.config(function($resourceProvider) {
  $resourceProvider.defaults.stripTrailingSlashes = false;
});



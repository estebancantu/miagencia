var clientService = angular.module('clientService', ['ngResource', 'ngBoilerplate']);

clientService.factory('clientService', ['$resource', 'SERVER_URL',
  function($resource, SERVER_URL){
    return $resource( SERVER_URL + 'clients/:id', {id:'@id'});
  }]);

clientService.config(function($resourceProvider) {
  $resourceProvider.defaults.stripTrailingSlashes = false;
});


var badgeCountersService = angular.module('badgeCountersService', ['ngResource', 'ngBoilerplate']);

badgeCountersService.factory('badgeCountersService', ['$resource', 'SERVER_URL',
  function($resource, SERVER_URL){
    return $resource( SERVER_URL + 'badgeCounters/:id', {id:'@id'});
  }]);

badgeCountersService.config(function($resourceProvider) {
  $resourceProvider.defaults.stripTrailingSlashes = false;
});


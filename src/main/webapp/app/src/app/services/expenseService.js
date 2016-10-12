var expenseService = angular.module('expenseService', ['ngResource', 'ngBoilerplate']);

/* ponerle services tambien al nombre del tipo para que se entienda que es un servicio
cuando se usa
*/

expenseService.factory('expenseService', ['$resource', 'SERVER_URL',
  function($resource, SERVER_URL){
	return $resource(SERVER_URL + 'vehicles/:vehicleId/expenses/:id', {vehicleId:'@vehicleId', id:'@id'}, {

			get: {method: 'get', isArray: true}
	});
  }]);

expenseService.config(function($resourceProvider) {
  $resourceProvider.defaults.stripTrailingSlashes = false;
});


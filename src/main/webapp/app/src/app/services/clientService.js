var clientService = angular.module('clientService', ['ngResource']);

/* ponerle services tambien al nombre del tipo para que se entienda que es un servicio
cuando se usa
*/

clientService.factory('clientService', ['$resource',
  function($resource){
   // return $resource('http://localhost:8080/miagencia/api/clients/:id', {id:'@id'});
    return $resource('http://www.miagenciavirtual.com.ar:8080/miagencia/api/clients/:id', {id:'@id'});
  }]);

clientService.config(function($resourceProvider) {
  $resourceProvider.defaults.stripTrailingSlashes = false;
});


/*

En algun momento va a haber que pasarle un context con la dir del server asi

var Owner = ['$resource','context', function($resource, context) {
 return $resource(context + '/api/owners/:id');

fijarse en 
https://spring.io/blog/2015/08/19/migrating-a-spring-web-mvc-application-from-jsp-to-angularjs


}];
 
 */
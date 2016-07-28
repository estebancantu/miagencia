var makesAndModelsServices = angular.module('makeAndModelsServices', ['ngResource']);

/* ponerle services tambien al nombre del tipo para que se entienda que es un servicio
cuando se usa
*/

makesAndModelsServices.factory('MakesAndModels', ['$resource',
  function($resource){
   // return $resource('http://localhost:8080/miagencia/api/makesAndModels/');
    return $resource('http://miagenciavirtual.com.ar:8080/miagencia/api/makesAndModels/');
  }]);

makesAndModelsServices.config(function($resourceProvider) {
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
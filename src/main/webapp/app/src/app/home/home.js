/**
 * Each section of the site has its own module. It probably also has
 * submodules, though this boilerplate is too simple to demonstrate it. Within
 * `src/app/home`, however, could exist several additional folders representing
 * additional modules that would then be listed as dependencies of this one.
 * For example, a `note` section could have the submodules `note.create`,
 * `note.delete`, `note.edit`, etc.
 *
 * Regardless, so long as dependencies are managed correctly, the build process
 * will automatically take take of the rest.
 *
 * The dependencies block here is also where component dependencies should be
 * specified, as shown below.
 */
angular.module( 'ngBoilerplate.home', [
  'ui.router',
  'vehicleService'
])

/**
 * Each section or module of the site can also have its own routes. AngularJS
 * will handle ensuring they are all available at run-time, but splitting it
 * this way makes each module more "self-contained".
 */
.config(function config( $stateProvider ) {
  $stateProvider.state( 'home', {
    url: '/home',
    views: {
      "main": {
        controller: 'HomeCtrl',
        templateUrl: 'home/home.tpl.html'
      }
    },
    data:{ pageTitle: 'Home' }
  });
})

/**
 * And of course we define a controller for our route.
 */
.controller( 'HomeCtrl', function HomeController( $scope, vehicleService ) {



  $scope.cars = vehicleService.query();



/**

  $scope.cars = [
    {
      image:'assets/img/foto2.jpg',
      make: 'Peugeot',
      model:'307',
      description:'Peugeot 307 5ptas. 1.6 N Xt Premium (110cv)',
      price:'120.000',
      year:'2012',
      kilometers:'150,500',
      isSold:false,
      isBooked:false
    },
    {
      image:'assets/img/foto1.jpg',
      make:'Chevrolet',
      model:'Astra',
      description:'Chevrolet Astra 2005 Gls 2.0',
      price:'30.000',
      year:'2012',
      kilometers:'1,500',
      isSold:false,
      isBooked:false
    },
    {
      image:'assets/img/foto3.jpg',
      make:'Fiat',
      model:'Palio',
      description:'Chevrolet Astra 2005 Gls 2.0',
      price:'30.000',
      year:'2012',
      kilometers:'1,500',
      isSold:true,
      isBooked:false
    },
    {
      image:'assets/img/foto4.jpg',
      make:'Chevrolet',
      model:'Astra',
      description:'Chevrolet Astra 2005 Gls 2.0',
      price:'35.000',
      year:'2012',
      kilometers:'1,500',
      isSold:false,
      isBooked:true
    },
    {
      image:'assets/img/foto1.jpg',
      make:'Chevrolet',
      model:'Astra',
      description:'Chevrolet Astra 2005 Gls 2.0',
      price:'87.000',
      year:'2012',
      kilometers:'1,500',
      isSold:false,
      isBooked:false
    }
  ];

*/


  $scope.isSold = function() {

  };

})

;






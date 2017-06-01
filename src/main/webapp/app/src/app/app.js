angular.module( 'ngBoilerplate', [
  'templates-app',
  'templates-common',
  'ngBoilerplate.home',
  'ngBoilerplate.about',
  'ngBoilerplate.carList',
  'ngBoilerplate.carDetails',
  'ngBoilerplate.clientList',
  'ngBoilerplate.clientDetails',
  'ngBoilerplate.newClient',
  'ngBoilerplate.newCar',
  'ngBoilerplate.sellCar',
  'ngBoilerplate.reserveCar',
  'ngBoilerplate.insuranceQuote',
  'ngBoilerplate.carExpenses',
  'ngBoilerplate.modals',
  'ngBoilerplate.login',
  'ngBoilerplate.error',
  'ui.router',
  'ngAnimate',
  'flow',
  'ui.bootstrap',
  'LocalStorageModule',
  'ngResource',
  'ngFileUpload',
  'ngImgCrop',
  'ui.utils.masks',
  'badgeCountersService',
  'Session',
  'http-auth-interceptor',
  'authSharedService'
])

.config(['localStorageServiceProvider', function(localStorageServiceProvider) {
  localStorageServiceProvider.setPrefix('ls');
}])


// Sets default app state
.config( ["$stateProvider", "$urlRouterProvider", function myAppConfig ( $stateProvider, $urlRouterProvider ) {
  $urlRouterProvider.otherwise( '/home' );
}])


.run( ['$rootScope', '$window', '$state', 'Session',
       function($rootScope, $window, $state, Session ) {

    $rootScope.authenticated = false;

   /*
    * Checks for authentication every state change.
    */
    $rootScope.$on( "$stateChangeStart", function(event, toState, toParams, fromState, fromParams, options) {

      // alert(toState.name);
      
      // if the user goes to any state (other than login) and is not authenticated, should be
      // redirected to login
      if (toState.name != "login" && !$rootScope.authenticated) {
          event.preventDefault();
          $rootScope.$broadcast("event:auth-loginRequired", {});
        }
    });

   /*
    * Handler for auth-loginRequired event.
    * This is called when the user is not authenticated and it is required to log in.
    * If on any state change the user is not authenticated, this function is called.
    * It redirects to the login state.
    */
    $rootScope.$on('event:auth-loginRequired', function(event, toState, toParams, fromState, fromParams, options) {
        //   if ($rootScope.loadingAccount && data.status !== 401) {
          //  $rootScope.requestedUrl = $location.path();
        //   $location.path('/loading');
        //   } else {
        //   Session.invalidate();
      $rootScope.authenticated = false;
      $rootScope.loadingAccount = false;
      $state.go("login", {notify: false}); 

        //   }
    });

   /*
    * Handler for auth-loginConfirmed event.
    * This is called when the user has been succesfully authenticated.
    * If the user came from a given page, it redirects to that page. Otherwise redirects to home state.
    * Then creates a session an sets authenticated = true
    * TODO It has a tentative delay function, see if that is needed.
    */
    $rootScope.$on('event:auth-loginConfirmed', function(event, toState, toParams, fromState, fromParams, options) {
      // $rootScope.loadingAccount = false;
      console.log('login confirmed ' + fromParams + ' ' + toParams);
      var nextLocation = ($rootScope.requestedUrl ? $rootScope.requestedUrl : "home");
      // var delay = ($location.path() === "/loading" ? 1500 : 0);
         
      // $timeout(function() {
      Session.create(toState);
      $rootScope.account = Session;
      $rootScope.authenticated = true;
      $state.go(nextLocation, {notify: false}).then(function() {
                      $rootScope.$broadcast('$stateChangeSuccess', toState, toParams, fromState, fromParams);
      });

      // }, delay);
         
    });


    // Call when the 403 response is returned by the server ---
    $rootScope.$on('event:auth-forbidden', function(rejection) {

        $rootScope.$evalAsync(function() {
          console.log("evento auth:forbidden");
          $state.go("error", {notify: false});          
        });
    });

    // Call when the user logs out
    // TODO sigue autenticado! No se pone la variable en false
    // Hay que llamar al estado auth-loginRequired
    $rootScope.$on('event:auth-loginCancelled', function () {
        $state.go('login', {notify: false}).then(function() {
            $rootScope.$broadcast('$stateChangeSuccess', toState, toParams, fromState, fromParams);
        });
    });



    $rootScope.user = {};

    // Facebook Init
    $window.fbAsyncInit = function() {
      // Executed when the SDK is loaded
      FB.init({
        appId: '1607953992831087',
        channelUrl: 'app/channel.html',
        status: true,
        cookie: true,
        xfbml: true
      });

    };

    (function(d){
      var js,
      id = 'facebook-jssdk',
      ref = d.getElementsByTagName('script')[0];

      if (d.getElementById(id)) {
        return;
      }

      js = d.createElement('script');
      js.id = id;
      js.async = true;
      js.src = "//connect.facebook.net/en_US/all.js";
      ref.parentNode.insertBefore(js, ref);
    }(document));
  
    // MercadoLibre Init
    //MELI.init({client_id: 4108975373321744});
    
    
  }])

.controller( 'AppCtrl', ["$scope", "$location", "badgeCountersService", "authSharedService", function AppCtrl ( $scope, $location, badgeCountersService, authSharedService ) {

  $scope.$on('$stateChangeSuccess', function(event, toState, toParams, fromState, fromParams){
    if ( angular.isDefined( toState .data.pageTitle ) ) {
      $scope.pageTitle = toState.data.pageTitle + ' | Mi Agencia Virtual' ;
    }
  });


    $scope.logout = function() {
        authSharedService.logout();
    };


    // badges
    badgeCountersService.get(function(data) {

      $scope.vehiclesCount = data.vehiclesCount;
      $scope.clientsCount = data.clientsCount;

  }); 



  // Sidebar
  $scope.state = false;
    
  $scope.toggleState = function() {
      $scope.state = !$scope.state;
  };

    $scope.showSidebar = function() {
      $scope.state = true;
  };

      $scope.hideSidebar = function() {
      $scope.state = false;
  };

}])

.directive('sidebarDirective', function() {
    return {
        link : function(scope, element, attr) {
            scope.$watch(attr.sidebarDirective, function(newVal) {
                  if(newVal)
                  {
                    element.addClass('show'); 
                    return;
                  }
                  element.removeClass('show');
            });
        }
    };
})

// shows or hides ui elements (sidebar, navbar) depending if the user is authenticated or not.
/*
.directive('access', function ($rootScope) {
        return {
            link: function (scope, element, attr) {
               $rootScope.$watch($rootScope.authenticated, function() {
                
                    if ($rootScope.authenticated)
                    {
                        element.removeClass('hide');
                        return;
                    } 
                    element.addClass('hide');    
                });
            }
        };
    })
*/



.filter('infoAutoCompletarCeros', function() {

      return function completar (input) {

                // TODO chequear tambien que el numero de entrada sea por lo menos de cinco digitos
                if (isNaN(input) || input.length < 4) {
                              return input;
                } else {

                       // completar con ceros
                       if (input.toString().length == 5) {

                                return '00' + input;

                       } else if (input.toString().length == 6) {

                                return '0' + input;

                       } else if (input.toString().length  > 6) {

                                return + input;
                       }
                }
      };
})


.filter('capitalize', function() {
    return function(input) {
        return (!!input) ? input.split(' ').map(function(wrd){return wrd.charAt(0).toUpperCase() + wrd.substr(1).toLowerCase();}).join(' ') : '';
    };
})


.filter('removeString', function () {
    return function (text, toRemove) {
        var str = text.replace(toRemove, '');
        return str;
    };
})



.constant('SERVER_ROOT','http://localhost:8080/miagencia/')
.constant('SERVER_URL', 'http://localhost:8080/miagencia/api/')
.constant('CDN_URL', 'http://localhost:8080/miagencia/pics/')

/*
.constant('SERVER_ROOT','http://www.miagenciavirtual.com.ar:8080/miagencia/')
.constant('SERVER_URL', 'http://www.miagenciavirtual.com.ar:8080/miagencia/api/')
.constant('CDN_URL', 'http://www.miagenciavirtual.com.ar:8080/miagencia/pics/')
*/
;


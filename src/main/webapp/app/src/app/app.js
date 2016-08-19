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
  'ui.router',
  'ngAnimate',
  'flow',
  'ui.bootstrap',
  'LocalStorageModule',
  'ngResource',
  'ngFileUpload',
  'ngImgCrop',
  'ui.utils.masks'
])

.config(['localStorageServiceProvider', function(localStorageServiceProvider) {
  localStorageServiceProvider.setPrefix('ls');
}])

.config( function myAppConfig ( $stateProvider, $urlRouterProvider ) {
  $urlRouterProvider.otherwise( '/home' );
})

.run( ['$rootScope', '$window',
       function($rootScope, $window) {
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
		MELI.init({client_id: 4108975373321744});
		
		
	}])

.controller( 'AppCtrl', function AppCtrl ( $scope, $location ) {

  $scope.$on('$stateChangeSuccess', function(event, toState, toParams, fromState, fromParams){
    if ( angular.isDefined( toState.data.pageTitle ) ) {
      $scope.pageTitle = toState.data.pageTitle + ' | Mi Agencia Virtual' ;
    }
  });



  // Sidebar
  $scope.state = false;
    
  $scope.toggleState = function() {
      $scope.state = !$scope.state;
  };

})

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

;


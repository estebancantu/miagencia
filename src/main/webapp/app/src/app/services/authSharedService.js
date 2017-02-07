var authSharedService = angular.module('authSharedService', ['ngResource', 'ngBoilerplate', 'http-auth-interceptor']);

/*
authSharedService.factory('authSharedService', ['$resource', 'SERVER_URL',
  function($resource, SERVER_URL){
    return $resource( SERVER_URL + 'clients/:id', {id:'@id'});
  }]);

authSharedService.config(function($resourceProvider) {
  $resourceProvider.defaults.stripTrailingSlashes = false;
});
*/



authSharedService.service('authSharedService', function ($rootScope, $http, $resource, authService, Session, SERVER_URL) {
    return {

        login: function (userName, password, rememberMe) {
            var config = {
                ignoreAuthModule: 'ignoreAuthModule',
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            };

            var credentials = {
				j_username: userName,
                j_password: password,
                rememberme: rememberMe
            };



            $http({
                method: 'POST',
                url: SERVER_URL + 'authenticate?' + 'j_username=' + userName + '&' + 'j_password=' + password + '&' + '_spring_security_remember_me=' + rememberMe,
                data: credentials,
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            })
            .then(function success(response) {
                        
               // $rootScope.authenticated = true;
               // aca propagar el estado
                authService.loginConfirmed(response.data);
            
			}, function error(response) {

					$rootScope.authenticationError = true;
					Session.invalidate();
			});

        },

        logout: function () {
            $rootScope.authenticationError = false;
            $rootScope.authenticated = false;
            $rootScope.account = null;
           // $http.get('j_spring_security_logout');

            $http({
                method: 'GET',
                url: SERVER_URL + 'logout'
            });

            Session.invalidate();
            authService.loginCancelled();
        }

    };
});
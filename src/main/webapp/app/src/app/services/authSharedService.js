var authSharedService = angular.module('authSharedService', ['ngResource', 'ngBoilerplate', 'http-auth-interceptor']);


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


            // TODO ver si hay que armar el url o hay que mandarlo en data, alguno de los dos esta de mas
            $http({
                method: 'POST',
                url: SERVER_URL + 'authenticate?' + 'j_username=' + userName + '&' + 'j_password=' + password + '&' + '_spring_security_remember_me=' + rememberMe,
                data: credentials,
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            })
            .then(function success(response) {
                        
                // Dispara el evento 'event:auth-loginConfirmed'. Lo captura app.js y redirecciona al estado 'home'.
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
            // Dispara el evento 'event:auth-loginCancelled'. Lo captura app.js y dispara un evento '$stateChangeSuccess'.
            authService.loginCancelled();
        }

    };
});
angular.module( 'ngBoilerplate.carDetails', [
  'vehicleService',
  'ui.router',
  'placeholders',
  'ui.bootstrap',
  'ngAnimate'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'carDetails', {
    url: '/carDetails/:carId',
    views: {
      "main": {
        controller: 'carDetailsCtrl',
        templateUrl: 'cars/carDetails/carDetails.tpl.html'
      } 
    },
    data:{ pageTitle: 'Detalles' }
  });
})

.controller( 'carDetailsCtrl', function carDetailsCtrl( $scope, $stateParams, vehicleService, $http) {

 
  $scope.setInterval=5000;
  $scope.slides = [];

  $scope.carDetailsDto = vehicleService.get({id: $stateParams.carId}, function(response) {

      $scope.slides.push({image: "http://www.miagenciavirtual.com.ar:8080/miagencia/pics/"+response.vehicleDto.imageUrl});
      $scope.slides.push({image: 'assets/img/logo.png'});
  });
  
});

angular.module('ngBoilerplate.carDetails').controller('shareModalCtrl', function ($scope, $uibModal) {
	
	$scope.successTextAlert = '';
	$scope.animationsEnabled = true;
	
	$scope.open = function () {

	var modalInstance = $uibModal.open({
			animation: $scope.animationsEnabled,
			ariaLabelledBy: 'modal-title',
			ariaDescribedBy: 'modal-body',
			templateUrl: 'shareModal.html',
			size: 'sm',
			controller: 'shareModalInstanceCtrl'
		});

		
		};

		$scope.toggleAnimation = function () {
			$scope.animationsEnabled = !$scope.animationsEnabled;
		};

});

	
angular.module('ngBoilerplate.carDetails').controller('shareSuccessModalInstanceCtrl', ['$scope', '$uibModalInstance', function ($scope, $uibModalInstance) {
	
	$scope.cancelSuccess = function () {
		$uibModalInstance.dismiss('cancel');
	};
	
	
}]);

// Please note that $uibModalInstance represents a modal window (instance) dependency.
// It is not the same as the $uibModal service used above.

angular.module('ngBoilerplate.carDetails').controller('shareModalInstanceCtrl', ['$scope', '$uibModalInstance', '$http', '$stateParams', '$uibModal', function ($scope, $uibModalInstance, $http, $stateParams, $uibModal) {
  
		
		$scope.cancel = function () {
			$uibModalInstance.dismiss('cancel');
		};
		
		$scope.postFacebook = function() {
			var shareDTO = {
				vehicleId: $stateParams.carId,
				token: $scope.facebookToken
			};


			$http({
				method: 'POST',
				url: 'http://www.miagenciavirtual.com.ar:8080/miagencia/api/share/facebook/',
				data: shareDTO,
				headers: {
					"Content-Type": "application/json",
					"Accept": "text/plain"
				}
			})
			.then(function(response) {
				if (response.status < 400) {
					$scope.successTextAlert = 'El vehiculo se publicó en Facebook';
				} else {
					$scope.successTextAlert = 'Error al publicar en Facebook.';
				}
				$scope.openSuccess('sm');
				}, function(data){
					$scope.successTextAlert = 'Error al publicar en Facebook.';
					$scope.openSuccess('sm');
				});
			
			};
			
		$scope.loginFacebook = function() {
			var _self = this;
			FB.getLoginStatus(function(res) {
				if (res.status === 'connected') {
					$scope.facebookToken = res.authResponse.accessToken;
					$scope.postFacebook();
				}			
				else {
					FB.login(function(res) {
						if (res.status === 'connected') {
							$scope.facebookToken = res.authResponse.accessToken;
							$scope.postFacebook();
						}
						
					});
				}
			});
			};	
			
		$scope.loginMercadoLibre = function(){
			MELI.getLoginStatus(function (data){
				if(data.state === 'AUTHORIZED'){
					$scope.mercadoLibreToken = data.authorization_info.access_token;
					$scope.postMercadoLibre();
				} else {
					MELI.login(function (data){
						MELI.getLoginStatus(function (data){
							if(data.state === 'AUTHORIZED'){
								$scope.mercadoLibreToken = data.authorization_info.access_token;
								$scope.postMercadoLibre();
							}
						});
					});
				}
				
			});
		};	

		$scope.postMercadoLibre = function() {
			var shareDTO = {
				vehicleId: $stateParams.carId,
				token: $scope.mercadoLibreToken
			};


			$http({
				method: 'POST',
				url: 'http://www.miagenciavirtual.com.ar:8080/miagencia/api/share/mercadoLibre/',
				data: shareDTO,
				headers: {
					"Content-Type": "application/json",
					"Accept": "text/plain"
				}
			})
			.then(function(response) {
				if (response.status < 400) {
					$scope.successTextAlert = 'El vehiculo se publicó en MercadoLibre';
				} else {
					if(response.status == 500) {
						$scope.successTextAlert = 'Error al publicar en Mercadolibre.';
					} else  {
						$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
					}
				}
				$scope.openSuccess('sm');
				}, function(data){
					if(data.status == 500) {
						$scope.successTextAlert = 'Error al publicar en Mercadolibre.';
					} else  {
						$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
					}
					$scope.openSuccess('sm');
				});
				
			};
			
			$scope.postOLX = function() {
				var shareDTO = {
					vehicleId: $stateParams.carId
				};


				$http({
					method: 'POST',
					url: 'http://www.miagenciavirtual.com.ar:8080/miagencia/api/share/olx/',
					data: shareDTO
				})
				.then(function(response) {
					if (response.status < 400) {
						$scope.successTextAlert = 'El vehiculo se publicó en OLX. Copia el siguiente link: '+response.data.fileUrl;
						$scope.openSuccess('lg');
					} else {
						if(response.status == 500) {
							$scope.successTextAlert = 'Error al publicar en OLX.';
						} else  {
							$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
						}
						$scope.openSuccess('sm');
					}
					}, function(data){
						if(data.status == 500) {
							$scope.successTextAlert = 'Error al publicar en OLX.';
						} else  {
							$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
						}
						$scope.openSuccess('sm');
					});
				};
				
				$scope.postAutocosmos = function() {
					var shareDTO = {
						vehicleId: $stateParams.carId,
						token: $scope.mercadoLibreToken
					};


					$http({
						method: 'POST',
						url: 'http://www.miagenciavirtual.com.ar:8080/miagencia/api/share/autocosmos/',
						data: shareDTO,
						headers: {
							"Content-Type": "application/json",
							"Accept": "text/plain"
						}
					})
					.then(function(response) {
						if (response.status < 400) {
							$scope.successTextAlert = 'El vehiculo se publicó en Autocosmos';
						} else {
							if(response.status == 500) {
								$scope.successTextAlert = 'Error al publicar en Autocosmos.';
							} else  {
								$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
							}
						}
						$scope.openSuccess('sm');
						}, function(data){
							if(data.status == 500) {
								$scope.successTextAlert = 'Error al publicar en Autocosmos.';
							} else  {
								$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
							}
							$scope.openSuccess('sm');
						});
						
					};
				

				$scope.openSuccess = function (size) {

					var modalInstance = $uibModal.open({
							ariaLabelledBy: 'modal-title',
							ariaDescribedBy: 'modal-body',
							templateUrl: 'shareSuccessContent.html',
							size: size,
							scope: $scope,
							controller: 'shareSuccessModalInstanceCtrl'
						});
				
				};
				

}]);

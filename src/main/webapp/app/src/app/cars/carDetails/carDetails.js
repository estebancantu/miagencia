angular.module( 'ngBoilerplate.carDetails', [
  'vehicleService',
  'broadcastService',
  'ui.router',
  'broadcastService',
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

.controller( 'carDetailsCtrl', function carDetailsCtrl( $scope, $stateParams, vehicleService, $http, $uibModal, broadcastService) {

 
  $scope.setInterval=5000;
  $scope.slides = [];



  $scope.carDetailsDto = vehicleService.get({id: $stateParams.carId}, function(response) {
    var urls = [];
	urls = response.vehicleDto.imageUrls;

	if (urls.length === 0 ) {
		$scope.slides.push({image: 'assets/img/logo.png'});

	} 
	else {

		for( i = 0; i < urls.length; i++ ) {
			$scope.slides.push({image: urls[i]});
		}
	}
  });
  
  broadcastService.broadcast($stateParams.carId);
  
  $scope.downloadReceipt = function () {
		$http({
			method: 'GET',
			url: 'http://www.miagenciavirtual.com.ar:8080//miagencia/file/salesContract/'+$stateParams.carId,
			headers: {
				
				"Content-Type": "application/json",
				"Accept": "application/msword"
			}
		}).success(function(data){
		}).error(function(){
		});
		
		};
		
	$scope.deleteCarModal = function () {

		var modalInstance = $uibModal.open({
			animation: true,
			templateUrl: 'deleteCarModal.html',
			controller: 'deleteCarModalInstanceCtrl',
			scope: $scope,
			resolve: {
				carId: function() { return $stateParams.carId; }
			}
		});
	};
	
	$scope.saveSuccessModal = function () {

		var modalInstance = $uibModal.open({
			animation: true,
			templateUrl: 'saveSuccessModal.html',
			controller: 'saveSuccessModalInstanceCtrl'
		});
	};
})
.$inject = ['$scope', 'broadcastService'];

  

angular.module('ngBoilerplate.carDetails').controller('shareModalCtrl', function ($scope, $uibModal) {
	
	$scope.successTextAlert = '';
	$scope.animationsEnabled = true;
	
	$scope.open = function () {

	var modalInstance = $uibModal.open({
			animation: $scope.animationsEnabled,
			ariaLabelledBy: 'modal-title',
			ariaDescribedBy: 'modal-body',
			templateUrl: 'shareModal.html',
			windowClass: 'model-select',
			size: 'sm',
			controller: 'shareModalInstanceCtrl'
		});

		
		};

		$scope.toggleAnimation = function () {
			$scope.animationsEnabled = !$scope.animationsEnabled;
		};
		
	

});

	
angular.module('ngBoilerplate.carDetails').controller('shareSuccessModalInstanceCtrl', ['$window','$scope', '$uibModalInstance', function ($window, $scope, $uibModalInstance) {
	
	$scope.cancelSuccess = function () {
		$uibModalInstance.dismiss('cancel');
	};
	
	$scope.goToOLX = function () {
		//$window.location.href = 'http://help.olx.com.ar/hc/es-419/requests/new?ticket_form_id=104613';
		$window.open('http://help.olx.com.ar/hc/es-419/requests/new?ticket_form_id=104613', '_blank');
	};
	
	
}]);

// Please note that $uibModalInstance represents a modal window (instance) dependency.
// It is not the same as the $uibModal service used above.

angular.module('ngBoilerplate.carDetails').controller('shareModalInstanceCtrl', ['$scope', '$uibModalInstance', '$http', '$stateParams', '$uibModal', function ($scope, $uibModalInstance, $http, $stateParams, $uibModal) {
  
		$scope.hideOLXCopyLink = true;
		$scope.dialogSize = '';
		
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
				$scope.hideOLXCopyLink= true;
				if (response.status < 400) {
					$scope.successTextAlert = 'El vehiculo se publicó en Facebook';
				} else {
					$scope.successTextAlert = 'Error al publicar en Facebook.';
				}
				$scope.openSuccess('sm');
				}, function(data){
					$scope.hideOLXCopyLink = true;
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
					MELI.login(function (){
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
			console.log('POSTMERCADOLIBRE');
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
				$scope.hideOLXCopyLink = true;
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
					$scope.hideOLXCopyLink = true;
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
						$scope.hideOLXCopyLink = false;
						$scope.oLXLink = response.data.fileUrl;
						$scope.successTextAlert = 'El vehiculo se publicó en OLX. Copia el siguiente link: ';
						$scope.openSuccess('');
					} else {
						$scope.hideOLXCopyLink = true;
						if(response.status == 500) {
							$scope.successTextAlert = 'Error al publicar en OLX.';
						} else  {
							$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
						}
						$scope.openSuccess('sm');
					}
					}, function(data){
						$scope.hideOLXCopyLink = true;
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
						$scope.hideOLXCopyLink = false;
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
							$scope.hideOLXCopyLink = false;
							if(data.status == 500) {
								$scope.successTextAlert = 'Error al publicar en Autocosmos.';
							} else  {
								$scope.successTextAlert = 'El vehiculo no se encuentra cargado. Por favor, contacte a su administrador';
							}
							$scope.openSuccess('sm');
						});
						
					};
				

				$scope.openSuccess = function (size) {
					$scope.dialogSize = size;
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


angular.module('ngBoilerplate.carDetails').controller('deleteCarModalInstanceCtrl', function ( $scope, $uibModalInstance, $location, $http, SERVER_URL, carId ) {

              $scope.cancel = function () {
                      $uibModalInstance.dismiss('cancel');
              };

              $scope.deleteCar = function () {

               
              
                    $http({
                            method: 'DELETE',
                            url: SERVER_URL + 'vehicles/' + carId,
                            headers: {
                                "Content-Type": "application/json",
                                "Accept": "text/plain"
                            }
                        })
                .then(function (response) {
                            if (response.status == 204) {  

                                console.log("Vehicle deleted successfuly.");
                                $location.path('/home'); 
                                $scope.saveSuccessModal();
                                $uibModalInstance.dismiss('ok');
                            }
                            else {
                            // TODO hacer modal de error
                                console.log("failed operation creation: " + response.status + " - " + response.statusText );
                            }
                        });


            };

  });












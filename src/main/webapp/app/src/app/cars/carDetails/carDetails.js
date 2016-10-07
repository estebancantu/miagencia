angular.module( 'ngBoilerplate.carDetails', [
  'vehicleService',
  'broadcastService',
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
	$scope.showSuccessAlert = false;
	
	$scope.switchBool = function(value) {
		$scope[value] = !$scope[value];
		if(!value){
			$scope.cancel();
		}
	};
	$scope.animationsEnabled = true;
	
	$scope.open = function () {

	var modalInstance = $uibModal.open({
			animation: $scope.animationsEnabled,
			templateUrl: 'myModalContent.html',
			controller: 'shareModalInstanceCtrl'
		});

		modalInstance.result.then(function (selectedItem) {}, function () {
			console.log('Modal dismissed at: ' + new Date());
		});
		
		};

		$scope.toggleAnimation = function () {
			$scope.animationsEnabled = !$scope.animationsEnabled;
		};

	});

	// Please note that $uibModalInstance represents a modal window (instance) dependency.
	// It is not the same as the $uibModal service used above.

angular.module('ngBoilerplate.carDetails').controller('shareModalInstanceCtrl', ['$scope', '$uibModalInstance', '$http', '$stateParams', function ($scope, $uibModalInstance, $http, $stateParams) {
  
		
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
					$scope.showSuccessAlert = true;
					$scope.successTextAlert = 'El vehiculo se publicó en Facebook';
					} else {
						$scope.cancel();
					}
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
					$scope.showSuccessAlert = true;
					$scope.successTextAlert = 'El vehiculo se publicó en MercadoLibre';
					} else {
						$scope.cancel();
					}
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





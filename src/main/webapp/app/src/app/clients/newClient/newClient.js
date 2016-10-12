angular.module( 'ngBoilerplate.newClient', [
  'ui.router',
  'clientService'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'newClient', {
    url: '/newClient/:clientId',
    views: {
      "main": {
        controller: 'newClientCtrl',
        templateUrl: 'clients/newClient/newClient.tpl.html'
      } 
    },
    data:{ pageTitle: 'Nuevo Cliente' }
  });
})


.controller( 'newClientCtrl', function AboutCtrl( $scope, $http, clientService, $uibModal, $location, $stateParams, SERVER_URL ) {
  // This is simple a demo for UI Boostrap.

   
  $scope.locationService = $location; 

  $scope.newClient = {};

  $scope.clientIsNew = true;


  if( $stateParams.clientId !== "" ) {

      $scope.newClient = clientService.get({id:$stateParams.clientId} );
      $scope.clientIsNew = false;

  }


    // Saves new client
  $scope.saveClient=function () {
    
    console.log($scope.newClient);
    console.log($scope.newClient.firstName);


    if ($scope.clientIsNew) {

      /** Go and create new client */

              $http({
                method: 'POST',
                url: SERVER_URL + 'clients/',
                data: $scope.newClient,
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "text/plain"
                }
            })
    .then(function (response) {
                if (response.status == 201) {

                    console.log("Client saved successfuly.");
                    $scope.locationService.path('/clientList');
                    $scope.saveSuccessModal();
                }
                else {
                  /*  $scope.vm.errorMessages = [];
                    $scope.vm.errorMessages.push({description: response.data}); */
                    console.log("failed operation creation: " + response.status + " - " + response.statusText );
                    $location.path('/newClient');
                }
            });



    } 

    else {

      /** Update existing client */

              $http({
                method: 'PUT',
                url: SERVER_URL + 'clients/',
                data: $scope.newClient,
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "text/plain"
                }
            })
    .then(function (response) {
                if (response.status == 200) {

                    console.log("Client updated successfuly.");
                    $scope.locationService.path('/clientList');
                    $scope.saveSuccessModal();
                }
                else {
                  /*  $scope.vm.errorMessages = [];
                    $scope.vm.errorMessages.push({description: response.data}); */
                    console.log("failed operation creation: " + response.status + " - " + response.statusText );
                    $location.path('/newClient');
                }
            });



    }

  



  };



    $scope.animationsEnabled = true;


    $scope.cancelModal = function () {

      var modalInstance = $uibModal.open({
        animation: $scope.animationsEnabled,
        templateUrl: 'cancelConfirmationModal.html',
        controller: 'cancelConfirmationModalInstanceCtrl'
      });
    };


        $scope.saveSuccessModal = function () {

      var modalInstance = $uibModal.open({
        animation: $scope.animationsEnabled,
        templateUrl: 'saveSuccessModal.html',
        controller: 'saveSuccessModalInstanceCtrl'
      });
    };





})

;
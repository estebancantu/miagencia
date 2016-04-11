angular.module( 'ngBoilerplate.newClient', [
  'ui.router',
  'plusOne'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'newClient', {
    url: '/newClient',
    views: {
      "main": {
        controller: 'newClientCtrl',
        templateUrl: 'clients/newClient/newClient.tpl.html'
      } 
    },
    data:{ pageTitle: 'Nuevo Cliente' }
  });
})


.controller( 'newClientCtrl', function AboutCtrl( $scope, $http ) {
  // This is simple a demo for UI Boostrap.



  $scope.newClient = {};


    // Saves new client
  $scope.saveNewClient=function () {
    
    console.log($scope.newClient);
    console.log($scope.newClient.firstName);
  
        $http({
                method: 'POST',
                url: 'http://localhost:8080/miagencia/api/clients/',
                data: $scope.newClient,
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "text/plain"
                }
            })
    .then(function (response) {
                if (response.status == 200) {
                    console.log("Client saved successfuly.");
                }
                else {
                  /*  $scope.vm.errorMessages = [];
                    $scope.vm.errorMessages.push({description: response.data}); */
                    console.log("failed operation creation: " + response.data);
                }
            });


  };




})

;
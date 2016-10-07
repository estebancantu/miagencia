angular.module( 'ngBoilerplate.clientList', [
  'ui.router',
  'clientService',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'clientList', {
    url: '/clientList',
    views: {
      "main": {
        controller: 'ClientListCtrl',
        templateUrl: 'clients/clientList/clientList.tpl.html'
      } 
    },
    data:{ pageTitle: 'Mis Clientes' }
  });
})

.controller( 'ClientListCtrl', function ClientListCtrl( $scope, $uibModal, $location, clientService ) {


  $scope.locationService = $location; 
  $scope.clients = clientService.query();




    $scope.deleteClientModal = function (client) {

        var modalInstance = $uibModal.open({
            animation: true,
            templateUrl: 'deleteClientModal.html',
            scope: $scope,
            controller: 'deleteClientModalInstanceCtrl',
            resolve: {
                client: function() { return client; }
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




.filter('tel', function () {
    return function (tel) {
        if (!tel) { return ''; }

        var value = tel.toString().trim().replace(/^\+/, '');

        if (value.match(/[^0-9]/)) {
            return tel;
        }

        var country, city, number;

        switch (value.length) {
            case 10: // +1PPP####### -> C (PPP) ###-####
                country = 1;
                city = value.slice(0, 3);
                number = value.slice(3);
                break;

            case 11: // +CPPP####### -> CCC (PP) ###-####
                country = value[0];
                city = value.slice(1, 4);
                number = value.slice(4);
                break;

            case 12: // +CCCPP####### -> CCC (PP) ###-####
                country = value.slice(0, 3);
                city = value.slice(3, 5);
                number = value.slice(5);
                break;

            default:
                return tel;
        }

        if (country == 1) {
            country = "";
        }

        number = number.slice(0, 3) + '-' + number.slice(3);

        return (country + " (" + city + ") " + number).trim();
    };
});




angular.module('ngBoilerplate.clientList').controller('deleteClientModalInstanceCtrl', function ( $scope, $uibModalInstance, $location, $http, client, SERVER_URL ) {

              $scope.cancel = function () {
                      $uibModalInstance.dismiss('cancel');
              };

              $scope.deleteClient = function () {

                
                console.log(client);
                console.log(client.firstName);
              
                    $http({
                            method: 'DELETE',
                            url: SERVER_URL + 'clients/' + client.id,
                            data: client,
                            headers: {
                                "Content-Type": "application/json",
                                "Accept": "text/plain"
                            }
                        })
                .then(function (response) {
                            if (response.status == 204) {  

                                console.log("Client deleted successfuly.");
                                $scope.locationService.path('/clientList'); 
                                $scope.saveSuccessModal();
                                // If everything went ok, remove old client from list
                                // TODO alternative: refresh the page
                                $scope.clients.splice($scope.clients.indexOf(client), 1);
                                $uibModalInstance.dismiss('ok');
                                  // TODO cambiar por deleteSuccess / se ha eliminado con exito
                            }
                            else {
                              /*  $scope.vm.errorMessages = [];
                                $scope.vm.errorMessages.push({description: response.data}); */
                                console.log("failed operation creation: " + response.status + " - " + response.statusText );
                                $location.path('/newClient');
                            }
                        });

                        // esto no tiene que estar, al recargar la pagina tiene que traer lo que quedo
                          //       $scope.clients.splice($scope.clients.indexOf(client), 1);
                           //      $uibModalInstance.dismiss('ok');
                          };

  });





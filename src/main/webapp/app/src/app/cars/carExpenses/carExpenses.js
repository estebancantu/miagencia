angular.module('ngBoilerplate.carExpenses', [
  'ui.router',
  'expenseService',
  'broadcastService',
  'ngFileUpload',
  'ngImgCrop'

]);


angular.module('ngBoilerplate.carExpenses').controller('expensesCtrl', function ( $scope, expenseService, $uibModal, $http, SERVER_URL, broadcastService) {


	//$scope.newExpense = {};
	$scope.expenses = [];

	$scope.carId = "";

	$scope.$on('carIdEvent', function(){

		$scope.carId = broadcastService.carId;

		$scope.expenses = expenseService.get({vehicleId:$scope.carId}, function() {
			console.log("anduvo");
		});  
	});





	$scope.animationsEnabled = true;



	$scope.totalExpenses = function(){
		var total = 0;
		for(count=0;count<$scope.expenses.length;count++){
			total = total + $scope.expenses[count].cost;
		}
		return total;
	};

	$scope.totalPaid = function(){
		var total = 0;
		for(count=0;count<$scope.expenses.length;count++){

			if($scope.expenses[count].paid) {
				total = total + $scope.expenses[count].cost;
			}
		}
		return total;
	};

	$scope.totalPending = function(){
		var total = 0;
		for(count=0;count<$scope.expenses.length;count++){

			if(!$scope.expenses[count].paid) {
				total = total + $scope.expenses[count].cost;
			}
		}
		return total;
	};


	$scope.newExpenseModal = function () {

		var modalInstance = $uibModal.open({
			animation: true,
			templateUrl: 'newExpenseModal.html',
			scope: $scope,
			controller: 'newExpenseModalInstanceCtrl',
			resolve: {
				httpService: function() { return $http; },
				serverUrl: function() { return SERVER_URL;}
			}

		});
	};


	$scope.deleteExpenseModal = function (expense) {

		var modalInstance = $uibModal.open({
			animation: true,
			templateUrl: 'deleteExpenseModal.html',
			scope: $scope,
			controller: 'deleteExpenseModalInstanceCtrl',
			resolve: {
				expense: function() { return expense; }
			}
		});
	};


	$scope.editExpenseModal = function (expense) {

		var modalInstance = $uibModal.open({
			animation: true,
			templateUrl: 'editExpenseModal.html',
			scope: $scope,
			controller: 'editExpenseModalInstanceCtrl',
			resolve: {
				expense: function() { return expense; }
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


/**
angular.module('ngBoilerplate.carExpenses').filter('sumOfValue', function () {

    return function (data, key) {        

        if (angular.isUndefined(data) && angular.isUndefined(key)) {
		return 0;  

        } else {
                  
		var sum = 0;        
		angular.forEach(data,function(value){
			sum = sum + parseInt(value[key]);
		});        
		return sum;
         }
    };
});

*/

angular.module('ngBoilerplate.carExpenses').controller('newExpenseModalInstanceCtrl', function ( $scope, $uibModalInstance, $location, $http, SERVER_URL ) {

              $scope.cancel = function () {
                      $uibModalInstance.dismiss('cancel');
              };



              $scope.saveExpense = function () { 


		$http({
			method: 'POST',
			url: SERVER_URL + 'vehicles/' + $scope.carId + '/expenses/',
			data: $scope.newExpense,
			headers: {
				"Content-Type": "application/json",
				"Accept": "text/plain"
			}
		})
		.then(function (response) {

		if (response.status == 201) {

			console.log("Expense saved successfuly.");
			// TODO agregar el newExpense a la lista
			$scope.saveSuccessModal();
			$scope.newExpense.id = response.headers("entity_id");
			$scope.newExpense.date = new Date();
			$scope.expenses.push($scope.newExpense);
			$scope.newExpense ="";
			$uibModalInstance.dismiss('ok');
		}
		else {

			console.log("failed operation creation: " + response.status + " - " + response.statusText );
		}
		});



                    
              };


  });



angular.module('ngBoilerplate.carExpenses').controller('deleteExpenseModalInstanceCtrl', function ( $scope, $uibModalInstance, $location, expense, $http, SERVER_URL ) {


              $scope.cancel = function () {
                      $uibModalInstance.dismiss('cancel');
              };

              $scope.deleteExpense = function () {


                console.log(expense);


              $http({
                    method: 'DELETE',
                    url: SERVER_URL + 'vehicles/' + $scope.carId + '/expenses/' + expense.id,
                    data: expense,
                    headers: {
                        "Content-Type": "application/json",
                        "Accept": "text/plain"
                    }
                })
                .then(function (response) {
                            if (response.status == 204) {  

                            // TODO aveces cuando no tira un status del servidor pero la peticion es incorrecta, el server
                            // puede tirar status 400, peticion incorrecta.
                                console.log("Expense deleted successfuly.");
                                $scope.saveSuccessModal();
                                // If everything went ok, remove old client from list
                                // TODO alternative: refresh the page
                                $scope.expenses.splice($scope.expenses.indexOf(expense), 1);
                                $uibModalInstance.dismiss('ok');
                                  // TODO cambiar por deleteSuccess / se ha eliminado con exito
                            }
                            else {
                              /*  $scope.vm.errorMessages = [];
                                $scope.vm.errorMessages.push({description: response.data}); */
                                console.log("failed operation delete: " + response.status + " - " + response.statusText );
                                // TODO mostrar ventana de error
                            }
                        });


		
              };


  });





angular.module('ngBoilerplate.carExpenses').controller('editExpenseModalInstanceCtrl', function ( $scope, $uibModalInstance, $location, expense, $http, SERVER_URL ) {


	$scope.editedExpense = expense;


              $scope.cancel = function () {
                      $uibModalInstance.dismiss('cancel');
              };

              $scope.saveExpense = function () {


                console.log(expense);


              $http({
                    method: 'PUT',
                    url: SERVER_URL + 'vehicles/' + $scope.carId + '/expenses/',
                    data: $scope.editedExpense,
                    headers: {
                        "Content-Type": "application/json",
                        "Accept": "text/plain"
                    }
                })
                .then(function (response) {
                            if (response.status == 200) {  

                            // TODO aveces cuando no tira un status del servidor pero la peticion es incorrecta, el server
                            // puede tirar status 400, peticion incorrecta.
                                console.log("Expense updated successfuly.");
                                $scope.saveSuccessModal();
                                $scope.expenses.splice($scope.expenses.indexOf(expense), 1);
                                $scope.expenses.push($scope.editedExpense);
                                $scope.editedExpense ="";
                                $uibModalInstance.dismiss('ok');

                            }
                            else {
                              /*  $scope.vm.errorMessages = [];
                                $scope.vm.errorMessages.push({description: response.data}); */
                                console.log("failed operation update: " + response.status + " - " + response.statusText );
                                // TODO mostrar ventana de error
                            }
                        });


		
              };


  });


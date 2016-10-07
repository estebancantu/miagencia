var broadcastService = angular.module('broadcastService', []);



broadcastService.factory('broadcastService', function($rootScope, $timeout) {

	var shared = {};

	shared.carId = ' ';

	shared.broadcast = function( carId ) {

		this.carId = carId;
		this.notifyAll();
	};

	shared.notifyAll = function() {

		$timeout(function(){
			$rootScope.$broadcast('carIdEvent');
		}, 1000);
	};

	return shared;
});



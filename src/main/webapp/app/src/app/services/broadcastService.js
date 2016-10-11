var broadcastService = angular.module('broadcastService', []);



broadcastService.factory('broadcastService', function($rootScope, $timeout) {

	var shared = {};

	shared.carId = ' ';
	shared.initialProfit = ' ';

	shared.broadcast = function( carId ) {

		this.carId = carId;
		this.notifyAll();
	};

	shared.postInitialProfit = function( initialProfit ) {

		this.initialProfit = initialProfit;
		this.notifyInitialProfit();
	};

	shared.notifyAll = function() {

		$timeout(function(){
			$rootScope.$broadcast('carIdEvent');
		}, 1000);
	};

	shared.notifyInitialProfit = function() {

		$timeout(function(){
			$rootScope.$broadcast('initialProfitEvent');
		}, 1000);
	};

	return shared;
});



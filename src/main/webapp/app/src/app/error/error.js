angular.module( 'ngBoilerplate.error', [
  'ui.router',
  'ui.bootstrap'
])

.config(function config( $stateProvider ) {
  $stateProvider.state( 'error', {
    url: '/error',
    views: {
      "main": {
        controller: 'ErrorCtrl',
        templateUrl: 'error/error.tpl.html'
      }
    },
    data:{ pageTitle: 'Error Inesperado' }
  });
})

.controller( 'ErrorCtrl', function ErrorCtrl( $scope ) {

})

;

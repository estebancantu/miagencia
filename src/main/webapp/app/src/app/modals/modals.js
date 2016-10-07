angular.module('ngBoilerplate.modals', [
  'ui.router',
  'makeAndModelsServices',
  'clientService',
  'ngFileUpload',
  'ngImgCrop'

]);


  angular.module('ngBoilerplate.modals').controller('cancelConfirmationModalInstanceCtrl', function ( $scope, $uibModalInstance, $location ) {

              $scope.cancel = function () {
                      $uibModalInstance.dismiss('cancel');
              };

              $scope.clearAll = function () {
                    $location.path('/home');
                    $uibModalInstance.dismiss('ok');
              };

  });



angular.module('ngBoilerplate.modals').controller('saveSuccessModalInstanceCtrl', function ( $scope, $uibModalInstance ) {

              $scope.ok = function () {
                      $uibModalInstance.dismiss('ok');
              };
});


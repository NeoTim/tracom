'use strict'

angular.module('tracomApp')
.controller 'CustCtrl', [
  '$scope'
  'Customer'
  '$stateParams'
  ($scope, Customer, $stateParams) ->
    $scope.message = 'Hello'
    $scope.customerId = $stateParams.customerId
    Customer.find($scope.customerId)
      .success (data)->
        $scope.cust = data

]

'use strict'

angular.module('tracomApp')
.controller 'CreateCustCtrl', [
  '$scope'
  'Customer'
  ($scope, Customer) ->
    $scope.message = 'Hello'
    $scope.createCusomter = ->
      # console.log $scope.newCust
      Customer.create($scope.newCust)

]

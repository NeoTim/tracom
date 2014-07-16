'use strict'

angular.module('tracomApp')
.controller 'CustomerCtrl', [
  '$scope'
  'socket'
  'Customer'
  ($scope, socket, Customer) ->
    $scope.message = 'Hello'
    Customer
      .get()
      .success (data)->
        $scope.customers = data
        socket.syncUpdates 'customer', $scope.customers
      .error (msg)->
        console.log msg

]

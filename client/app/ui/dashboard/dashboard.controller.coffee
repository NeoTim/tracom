'use strict'

angular.module('tracomApp').controller 'DashboardCtrl', ($scope) ->
  $scope.message = 'Hello'

  $scope.panels = [
    {id: 1, position: 1, size: 4, title: 'Following'}
    {id: 2, position: 2, size: 4, title: 'Production'}
    {id: 3, position: 3, size: 4, title: 'Contacts'}
    {id: 4, position: 4, size: 4, title: 'Notify'}
  ]

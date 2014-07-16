'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'dashboard',
    url: '/dashboard'
    templateUrl: 'app/ui/dashboard/dashboard.html'
    controller: 'DashboardCtrl'

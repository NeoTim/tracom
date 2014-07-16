'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'production',
    url: '/production'
    templateUrl: 'app/ui/production/production.html'
    controller: 'ProductionCtrl'

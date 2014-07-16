'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'map',
    url: '/map'
    templateUrl: 'app/ui/map/map.html'
    controller: 'MapCtrl'

'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'entry',
    url: '/entries'
    templateUrl: 'app/models/entry/entry.html'
    controller: 'EntryCtrl'

'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'batch',
    url: '/batches'
    templateUrl: 'app/models/batch/batch.html'
    controller: 'BatchCtrl'

'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'service',
    url: '/service'
    templateUrl: 'app/ui/service/service.html'
    controller: 'ServiceCtrl'

'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'shipment',
    url: 'shipments'
    templateUrl: 'app/models/shipment/shipment.html'
    controller: 'ShipmentCtrl'

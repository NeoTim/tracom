'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'delivery',
    url: '/deliveries'
    templateUrl: 'app/models/delivery/delivery.html'
    controller: 'DeliveryCtrl'

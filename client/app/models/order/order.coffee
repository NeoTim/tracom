'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'order',
    url: '/orders'
    templateUrl: 'app/models/order/order.html'
    controller: 'OrderCtrl'

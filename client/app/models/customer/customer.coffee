'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'customer',
    url: '/customers'
    templateUrl: 'app/models/customer/customer.html'
    controller: 'CustomerCtrl'

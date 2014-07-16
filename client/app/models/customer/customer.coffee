'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider
    .state 'customer',
      url: '/customers'
      templateUrl: 'app/models/customer/customer.html'
      controller: 'CustomerCtrl'
    .state 'customer.create',
      url: '/create'
      templateUrl: 'app/models/customer/views/create.html'
      controller: 'CreateCustCtrl'
    .state 'customer.detail',
      url: '/:customerId'
      templateUrl: 'app/models/customer/views/cust.html'
      controller: 'CustCtrl'

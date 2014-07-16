'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'product',
    url: '/products'
    templateUrl: 'app/models/product/product.html'
    controller: 'ProductCtrl'

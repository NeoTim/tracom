'use strict'

describe 'Controller: OrderCtrl', ->

  # load the controller's module
  beforeEach module('tracomApp')
  OrderCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    OrderCtrl = $controller('OrderCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1

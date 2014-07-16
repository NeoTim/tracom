'use strict'

describe 'Controller: ProductionCtrl', ->

  # load the controller's module
  beforeEach module('tracomApp')
  ProductionCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProductionCtrl = $controller('ProductionCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1

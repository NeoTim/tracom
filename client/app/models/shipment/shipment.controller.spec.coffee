'use strict'

describe 'Controller: ShipmentCtrl', ->

  # load the controller's module
  beforeEach module('tracomApp')
  ShipmentCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    ShipmentCtrl = $controller('ShipmentCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1

'use strict'

describe 'Controller: DeliveryCtrl', ->

  # load the controller's module
  beforeEach module('tracomApp')
  DeliveryCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    DeliveryCtrl = $controller('DeliveryCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1

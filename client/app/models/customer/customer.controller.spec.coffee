'use strict'

describe 'Controller: CustomerCtrl', ->

  # load the controller's module
  beforeEach module('tracomApp')
  CustomerCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    CustomerCtrl = $controller('CustomerCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1

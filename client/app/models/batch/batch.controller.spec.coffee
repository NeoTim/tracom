'use strict'

describe 'Controller: BatchCtrl', ->

  # load the controller's module
  beforeEach module('tracomApp')
  BatchCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    BatchCtrl = $controller('BatchCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1

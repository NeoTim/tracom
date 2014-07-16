'use strict'

describe 'Controller: EntryCtrl', ->

  # load the controller's module
  beforeEach module('tracomApp')
  EntryCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    EntryCtrl = $controller('EntryCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1

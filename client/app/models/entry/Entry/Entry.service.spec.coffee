'use strict'

describe 'Service: Entry', ->

  # load the service's module
  beforeEach module('tracomApp')

  # instantiate service
  Entry = undefined
  beforeEach inject((_Entry_) ->
    Entry = _Entry_
  )
  it 'should do something', ->
    expect(!!Entry).toBe true
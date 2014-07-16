'use strict'

describe 'Service: Batch', ->

  # load the service's module
  beforeEach module('tracomApp')

  # instantiate service
  Batch = undefined
  beforeEach inject((_Batch_) ->
    Batch = _Batch_
  )
  it 'should do something', ->
    expect(!!Batch).toBe true
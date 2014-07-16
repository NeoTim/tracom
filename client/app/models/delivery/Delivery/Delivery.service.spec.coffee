'use strict'

describe 'Service: Delivery', ->

  # load the service's module
  beforeEach module('tracomApp')

  # instantiate service
  Delivery = undefined
  beforeEach inject((_Delivery_) ->
    Delivery = _Delivery_
  )
  it 'should do something', ->
    expect(!!Delivery).toBe true
'use strict'

describe 'Service: Shipment', ->

  # load the service's module
  beforeEach module('tracomApp')

  # instantiate service
  Shipment = undefined
  beforeEach inject((_Shipment_) ->
    Shipment = _Shipment_
  )
  it 'should do something', ->
    expect(!!Shipment).toBe true
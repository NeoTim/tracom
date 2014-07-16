'use strict'

angular.module('tracomApp').factory 'Customer', ($http)->

  # Service logic
  # ...
  # meaningOfLife = 42

  # Public API here
  get: ->
    $http.get('/api/customers')
  find: (id)->
    $http.get('/api/customers/' + id)
  create: (data)->
    $http.post('/api/customers', data)
  update: (id,data)->
    $http.put('/api/customers/' + id, data)
  destroy: (id)->
    $http.delete('/api/customers/' + id)

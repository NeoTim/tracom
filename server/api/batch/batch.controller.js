'use strict';

var _ = require('lodash');
var Batch = require('./batch.model');

// Get list of batchs
exports.index = function(req, res) {
  Batch.find(function (err, batchs) {
    if(err) { return handleError(res, err); }
    return res.json(200, batchs);
  });
};

// Get a single batch
exports.show = function(req, res) {
  Batch.findById(req.params.id, function (err, batch) {
    if(err) { return handleError(res, err); }
    if(!batch) { return res.send(404); }
    return res.json(batch);
  });
};

// Creates a new batch in the DB.
exports.create = function(req, res) {
  Batch.create(req.body, function(err, batch) {
    if(err) { return handleError(res, err); }
    return res.json(201, batch);
  });
};

// Updates an existing batch in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  Batch.findById(req.params.id, function (err, batch) {
    if (err) { return handleError(err); }
    if(!batch) { return res.send(404); }
    var updated = _.merge(batch, req.body);
    updated.save(function (err) {
      if (err) { return handleError(err); }
      return res.json(200, batch);
    });
  });
};

// Deletes a batch from the DB.
exports.destroy = function(req, res) {
  Batch.findById(req.params.id, function (err, batch) {
    if(err) { return handleError(res, err); }
    if(!batch) { return res.send(404); }
    batch.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.send(204);
    });
  });
};

function handleError(res, err) {
  return res.send(500, err);
}
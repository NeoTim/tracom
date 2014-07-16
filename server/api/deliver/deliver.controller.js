'use strict';

var _ = require('lodash');
var Deliver = require('./deliver.model');

// Get list of delivers
exports.index = function(req, res) {
  Deliver.find(function (err, delivers) {
    if(err) { return handleError(res, err); }
    return res.json(200, delivers);
  });
};

// Get a single deliver
exports.show = function(req, res) {
  Deliver.findById(req.params.id, function (err, deliver) {
    if(err) { return handleError(res, err); }
    if(!deliver) { return res.send(404); }
    return res.json(deliver);
  });
};

// Creates a new deliver in the DB.
exports.create = function(req, res) {
  Deliver.create(req.body, function(err, deliver) {
    if(err) { return handleError(res, err); }
    return res.json(201, deliver);
  });
};

// Updates an existing deliver in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  Deliver.findById(req.params.id, function (err, deliver) {
    if (err) { return handleError(err); }
    if(!deliver) { return res.send(404); }
    var updated = _.merge(deliver, req.body);
    updated.save(function (err) {
      if (err) { return handleError(err); }
      return res.json(200, deliver);
    });
  });
};

// Deletes a deliver from the DB.
exports.destroy = function(req, res) {
  Deliver.findById(req.params.id, function (err, deliver) {
    if(err) { return handleError(res, err); }
    if(!deliver) { return res.send(404); }
    deliver.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.send(204);
    });
  });
};

function handleError(res, err) {
  return res.send(500, err);
}
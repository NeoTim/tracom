/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var Deliver = require('./deliver.model');

exports.register = function(socket) {
  Deliver.schema.post('save', function (doc) {
    onSave(socket, doc);
  });
  Deliver.schema.post('remove', function (doc) {
    onRemove(socket, doc);
  });
}

function onSave(socket, doc, cb) {
  socket.emit('deliver:save', doc);
}

function onRemove(socket, doc, cb) {
  socket.emit('deliver:remove', doc);
}
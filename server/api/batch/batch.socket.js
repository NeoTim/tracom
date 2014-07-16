/**
 * Broadcast updates to client when the model changes
 */

'use strict';

var Batch = require('./batch.model');

exports.register = function(socket) {
  Batch.schema.post('save', function (doc) {
    onSave(socket, doc);
  });
  Batch.schema.post('remove', function (doc) {
    onRemove(socket, doc);
  });
}

function onSave(socket, doc, cb) {
  socket.emit('batch:save', doc);
}

function onRemove(socket, doc, cb) {
  socket.emit('batch:remove', doc);
}
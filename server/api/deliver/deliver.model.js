'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var DeliverSchema = new Schema({
  name: String,
  info: String,
  active: Boolean
});

module.exports = mongoose.model('Deliver', DeliverSchema);
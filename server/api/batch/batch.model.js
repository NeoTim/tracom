'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var BatchSchema = new Schema({
  batch: String,
  sku: String,
  status:
    num: Number,
    color: String,
    label: String,
  complete: Boolean
});

module.exports = mongoose.model('Batch', BatchSchema);

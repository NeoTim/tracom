'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ContainerSchema = new Schema({
  size: String,
  qty: Number
})


var EntrySchema = new Schema({
  sku: String,
  order_id: { type: Schema.Types.ObjectId, ref: 'Order'},
  product_id: { type: Schema.Types.ObjectId, ref: 'Shipment'},
  batch_id: { type: Schema.Types.ObjectId, ref: 'Batch'},
  containers: [ContainerSchema],
  sundry: Boolean,
  in_stock: Boolean,
  production: Boolean,
  info: String,
  // active: Boolean
});

module.exports = mongoose.model('Entry', EntrySchema);

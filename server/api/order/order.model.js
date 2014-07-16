'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var OrderSchema = new Schema({
  doc: Number,
  user_id: { type: Schema.Types.ObjectId, ref: 'User'},
  customer_id: { type: Schema.Types.ObjectId, ref: 'Customer'},
  delivery_id: { type: Schema.Types.ObjectId, ref: 'Delivery'},
  shipment_id: { type: Schema.Types.ObjectId, ref: 'Shipment'},
  delivery_method: String,
  delivery_status: String,
  created_at: Date,

  active: Boolean
});

module.exports = mongoose.model('Order', OrderSchema);

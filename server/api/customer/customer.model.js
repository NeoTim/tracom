'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var LocationSchema = new Schema({
  address: String,
  address2: String,
  city: String,
  state: String,
  postal: String
})

var CustomerSchema = new Schema({
  name: String,
  email: String,
  phone: String,
  locations: [LocationSchema],
  contacts: [{ type: Schema.Types.ObjectId, ref: 'Contact'}],
  orders: [{ type: Schema.Types.ObjectId, ref: 'Order'}],
});

module.exports = mongoose.model('Customer', CustomerSchema);

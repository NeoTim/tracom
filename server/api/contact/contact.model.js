'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ContactSchema = new Schema({
  first: String,
  last: String,
  title: String,
  phone: String,
  email: Boolean,
  primary: Boolean,
});

module.exports = mongoose.model('Contact', ContactSchema);

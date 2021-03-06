/**
 * Main application routes
 */

'use strict';

var errors = require('./components/errors');

module.exports = function(app) {

  // Insert routes below
  app.use('/api/contacts', require('./api/contact'));
  app.use('/api/shipments', require('./api/shipment'));
  app.use('/api/deliveries', require('./api/deliver'));
  app.use('/api/batches', require('./api/batch'));
  app.use('/api/products', require('./api/product'));
  app.use('/api/entries', require('./api/entry'));
  app.use('/api/orders', require('./api/order'));
  app.use('/api/customers', require('./api/customer'));
  app.use('/api/things', require('./api/thing'));
  app.use('/api/users', require('./api/user'));

  app.use('/auth', require('./auth'));
  
  // All undefined asset or api routes should return a 404
  app.route('/:url(api|auth|components|app|bower_components|assets)/*')
   .get(errors[404]);

  // All other routes should redirect to the index.html
  app.route('/*')
    .get(function(req, res) {
      res.sendfile(app.get('appPath') + '/index.html');
    });
};

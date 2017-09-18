'use strict';
module.exports = function(app) {
  var todoList = require('../controllers/todoListController');

  // todoList Routes
var bodyParser = require('body-parser');
// app.use(bodyParser);
 app.use(bodyParser.json());
 app.use(bodyParser.urlencoded({ extended: true }));


  app.route('/ORDEN/GET')
    .get(todoList.listarOrden);
  app.route('/ORDEN/POST')
  .post(todoList.insertOrden);
  app.route('/PLATO/GET')
    .get(todoList.listarPlato);
  app.route('/USUARIO/GET')
    .get(todoList.listarUsuario);
  app.route('/ORDENPLATO/GET')
    .get(todoList.listarOrdenPlato);
  app.route('/ORDENPLATO/POST')
    .post(todoList.insertOrdenPlato);
  app.route('/PLATO/POST')
  .post(todoList.insertPlato);
  app.route('/USUARIO/POST')
  .post(todoList.insertUsuario);

};

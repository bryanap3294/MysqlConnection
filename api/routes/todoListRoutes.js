'use strict';
module.exports = function(app) {
  var todoList = require('../controllers/todoListController');

  // todoList Routes
var bodyParser = require('body-parser');
// app.use(bodyParser);
 app.use(bodyParser.json());
 app.use(bodyParser.urlencoded({ extended: true }));


  app.route('/GET')
    .get(todoList.list_all_tasks);
  app.route('/POST')
  .post(todoList.insert);
};

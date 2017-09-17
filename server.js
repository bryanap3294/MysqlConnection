var express = require('express'),
  app = express(),
  port = process.env.PORT || 3000;
var routes = require('./api/routes/todoListRoutes');
app.all('/*', (req, res, next) => {

    res.header('Access-Control-Allow-Origin', '*');

    res.header('Access-Control-Allow-Headers', 'Content-Type,X-Requested-With');

    next();

});

app.listen(port);

routes(app);

console.log('todo list RESTful API server started on: ' + port);

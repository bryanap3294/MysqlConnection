
var mysql = require('mysql');

exports.getconnection = function() {
  var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database: "tektonrestaurant"
  });
    return con;
}

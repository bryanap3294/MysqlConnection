'use strict';
  var con = require('../connection');

exports.list_all_tasks = function(req, res) {

  var sql = "SELECT * FROM `orden`";

  con.getconnection().query(sql, function (err, result, fields) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.status(200)
      .json(result);
  });

};

exports.insert = function(req, res) {
   console.log(JSON.stringify(req.body));
  //console.log(req.body.idorden + "bryan");
  // console.log(req.request.body.toString() + "bryan");
  var sql = 'INSERT INTO orden SET ?';
  con.getconnection().query(sql, req.body, function (err, result) {
    // con.getconnection().query(sql, req.body, function (err, result) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.send('user added to database with ID:');
  });

};

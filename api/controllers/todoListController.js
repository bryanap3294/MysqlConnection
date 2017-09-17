'use strict';
  var con = require('../connection');

exports.list_all_tasks = function(req, res) {

  var sql = "SELECT * FROM `ordenes`";

  con.getconnection().query(sql, function (err, result, fields) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.status(200)
      .json(result);
  });

};

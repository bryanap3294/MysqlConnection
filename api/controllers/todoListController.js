'use strict';
  var con = require('../connection');

exports.listarOrden = function(req, res) {
  var sql = "SELECT * FROM `orden`";
  con.getconnection().query(sql, function (err, result, fields) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.status(200)
      .json(result);
  });
};

exports.insertOrden = function(req, res) {
   console.log(JSON.stringify(req.body));
  var sql = 'INSERT INTO orden SET ?';
  con.getconnection().query(sql, req.body, function (err, result) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.send('user added to database with ID:');
  });
};

exports.listarPlato = function(req, res) {
  var sql = "SELECT * FROM `plato`";
  con.getconnection().query(sql, function (err, result, fields) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.status(200)
      .json(result);
  });
};

exports.insertPlato = function(req, res) {
   console.log(JSON.stringify(req.body));
  var sql = 'INSERT INTO plato SET ?';
  con.getconnection().query(sql, req.body, function (err, result) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.send('user added to database with ID:');
  });
};

exports.listarOrdenPlato = function(req, res) {
  var sql = "SELECT * FROM `orden_plato`";
  con.getconnection().query(sql, function (err, result, fields) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.status(200)
      .json(result);
  });
};

exports.insertOrdenPlato = function(req, res) {
   console.log(JSON.stringify(req.body));
  var sql = 'INSERT INTO orden_plato SET ?';
  con.getconnection().query(sql, req.body, function (err, result) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.send('user added to database with ID:');
  });
};

exports.listarUsuario = function(req, res) {
  var sql = "SELECT * FROM `usuario`";
  con.getconnection().query(sql, function (err, result, fields) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.status(200)
      .json(result);
  });
};

exports.insertUsuario = function(req, res) {
   console.log(JSON.stringify(req.body));
  var sql = 'INSERT INTO usuario SET ?';
  con.getconnection().query(sql, req.body, function (err, result) {
    con.getconnection().end();
      if (err) throw err;
      console.log(result);
      res.send('user added to database with ID:');
  });
};

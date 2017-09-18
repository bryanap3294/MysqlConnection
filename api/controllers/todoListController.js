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

exports.login = function(req, res){
	var sql = "select * from usuario where idusuario = ? and pwd = ? ";
	var reqBody = req.body;
	var values = [reqBody.idusuario, reqBody.pwd];
  console.log(JSON.stringify("login"+values));

	con.getconnection().query(sql, values, function (err, result, fields) {
    	con.getconnection().end();
        console.log(values+"result: "+result);
	    if (err) {
	    	console.log("error ", err);
	    	res.status(500)
	    	.json("error");
	    	throw err;
	    }

	    var bodyOk = {user: reqBody.idusuario, rol: result[0].rol};
	    res.status(200)
	    .json(bodyOk);
	    return;
  	});
}

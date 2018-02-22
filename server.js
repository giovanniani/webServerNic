var express = require('express');
var http = require('http');
var mysql = require("mysql");
var app = express();
var url = require('url');
var bodyParser = require("body-parser");
var methodOverride = require('method-override');


var port = 3000;

var allowCrossDomain = function(req, res, next) {
    res.header('Access-Control-Allow-Origin', "*");
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
}
    
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'root',
    database : 'nic'
});

connection.connect(function(error) {
	if(!!error){
		console.log(error);
	} else {
		console.log("connected - " + new Date().toLocaleString());
	}
});

//Procedimientos de flotilla
//--------------------------

app.get('/insertarProducto/:nombre/:precio/:cate/:descripcion', function (req, resp) {
    resp.header("Access-Control-Allow-Origin", "*");
    resp.header("Access-Control-Allow-Headers", "X-Requested-With");
    connection.query('CALL InsertarProducto(?,?,?,?)', [req.params.nombre,req.params.precio,req.params.cate,
        req.params.descripcion], function(err, rows) {
        if (err) throw err;
        resp.send(true);
        console.log("productoinsertado: " + " > " + new Date().toLocaleString());
    });

});


app.get('/getProductos/:id', function (req, resp) {
    resp.header("Access-Control-Allow-Origin", "*");
    resp.header("Access-Control-Allow-Headers", "X-Requested-With");
    connection.query('CALL getProductos(?)',[req.params.id], function(err, rows) {
        if (err) throw err;
        resp.json(rows[0]);
        console.log("todos los productos devueltos - " + new Date().toLocaleString());
    });

});

app.get('/getCategorias/', function (req, resp) {
    resp.header("Access-Control-Allow-Origin", "*");
    resp.header("Access-Control-Allow-Headers", "X-Requested-With");
    connection.query('CALL getCategorias()', function(err, rows) {
        if (err) throw err;
        resp.json(rows[0]);
        console.log("categorias devueltas - " + new Date().toLocaleString());
    });

});

app.get('/getAll/', function (req, resp) {
    resp.header("Access-Control-Allow-Origin", "*");
    resp.header("Access-Control-Allow-Headers", "X-Requested-With");
    connection.query('CALL getAll', function(err, rows) {
        if (err) throw err;
        resp.json(rows[0]);
        console.log("todo devuelto - " + new Date().toLocaleString());
    });

});



app.listen(port);
console.log("Listening on port:" + port);
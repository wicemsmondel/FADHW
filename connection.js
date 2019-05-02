var express = require('express');
var mysql = require('mysql');
var app = express();

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database : "fadh"
});

con.connect(function(err) { //callback
  if (err) throw err;
  console.log("Connected!");
//   var sql = "CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))";
//   con.query(sql, function (err, result) {
//     if (err) throw err;
//     console.log("Table created");
//   });
});

app.get('/', function(req, resp){
    con.query('SELECT * FROM users', function(error, rows, fields){
        if(!!error){
            console.log('error');
        }else{
            console.log('successful\n');
            console.log(rows);
        }
    })
})



app.listen(8080);
var express = require('express');
var app = express();
var cities = {cities:["Amsterdam","Berlin","New York","San Francisco","Tokyo"]}

app.get('/', function(req, res){
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.write("Welcome to Jenkins - Github Demonstration - CI - CD Demo - Done");
    res.end();
});

var port = process.env.PORT || 8081;

app.listen(port);

module.exports = app;


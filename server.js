var express = require('express');
var app = express();

app.get('/', function(req, res){
	res.json({"msg" : "Karibu Dunya rafiki yangu !!"})
});

var port = process.env.port || 3000;

app.listen(port, function(){
	console.log('Server started on port ', port);
});

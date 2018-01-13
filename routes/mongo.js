var express = require('express');
var router = express.Router();
var mongodb = require('mongodb');


router.get('/', function(req, res) {
	mongodb.connect('mongodb://localhost:27017/mydb', function(err, db) {
		console.log(db);
		
	});

});

module.exports = router;



/*var MongoClient = require('mongodb').MongoClient
  , assert = require('assert');

// Connection URL
var url = 'mongodb://localhost:27017/myproject';

// Use connect method to connect to the server
MongoClient.connect(url, function(err, db) {
  assert.equal(null, err);
  console.log("Connected successfully to server");

  db.close();
})*/
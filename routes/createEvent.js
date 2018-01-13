var express = require('express');
var router = express.Router();
	var db = require('../dbConnect');


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('createEvent', { title: 'Express' });
});

router.post('/', function(req, res, next){
	console.log(db);
	console.log(req.body);
	console.log("yahan a gye");
	var event = req.body;
/*	db.any('INSERT INTO event (agenda, organiser_id, location, date, start_time, duration, presenter_id, no_of_attendees, description) values ($1, $2, $3, $4, $5, $6, $7, $8, $9)', 
		[event.eventAgenda, 'oid@gmail.com', event.eventLocation, event.eventDate, event.startTime, event.eventDuration, 'pid@gmail.com', 3, event.eventDescription])
		.then(function(data) {
			console.log("Query successful");
		}, function(err) {
			console.log('Error: ' + err);
		});*/



	db.any("insert into event (agenda, organiser_id, location, date, start_time, duration, presenter_id, no_of_attendees, description) values ('asdf', 'oid@gmail.com', 'asdf', 'asdf', '4', 4, 'pid@gmail.com', 4, 'asdf')").then(function(data) {
		console.log(';asdfkjghasdf');
		res.json ({
					"Asdf":"asdf"
				});
	}, function(err){
		console.log('asldkfugaf');
		res.json ({
					"Asdf":"asdf"
				});
	});
});
module.exports = router;

 	
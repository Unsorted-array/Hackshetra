var db = require('../dbConnect');
var bcrypt = require('bcrypt');

exports.register = function(req, res) {
	console.log(req.body);
	var user = req.body;
	bcrypt.genSalt(10, function(err, salt) {
		bcrypt.hash(user.password, salt, function(err, hash) {
			console.log(hash);
			db.any('INSERT INTO organiser (emailid, fname, lname, password) values($1, $2, $3, $4)', [user.emailid, user.fname, user.lname, hash]).then(function(data) {
				console.log('Query successful');
				// setUser(req, res, data);
				req.session.name = user.fname + ' ' + lname;
				req.session.cookie.maxAge = 24 * 60 * 60 * 1000 * 365;
                req.session.isOrganiser = true;
				console.log(req.session);
				res.render('dashboard', {
					name: req.session.name
				});
                }, function(err) {
                	// Response based on front end implementation.
                	console.log('Error: ');
                    console.log(err);
                    if (err.code == '23505') {
                    res.json({
                    	'responseCode': err.code,
                        'responseDesc': 'unique key error'
                    });
		        }
       		});
		});
	});
}

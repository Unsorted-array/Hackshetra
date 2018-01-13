var db = require('../dbConnect');
var bcrypt = require('bcrypt');

exports.login = function(req, res) {
	console.log(req.body);
	
	db.one('SELECT * FROM organiser where emailid = $1', [req.body.emailid]).then(function(data) {
		bcrypt.compare(req.body.password, data.password, function(err, passMatch) {
            if (err) {
                console.log('Credentials do not match.');
                res.redirect('/login');
            }
            if (passMatch === true) {
                console.log(data);
                console.log('Credentials match');

                req.session.name = fname + ' ' + lname;
                req.session.isOrganiser = true;
                res.render('dashboard', {
                	name: req.session.name
                });
            } else {
                console.log('Credentials do not match');
                res.render('login');
            }
        }, function(err) {
	        console.log('Error: ');
	        console.log(err);
	        res.render('login');
    });
})

}

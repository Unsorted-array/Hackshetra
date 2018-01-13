var express = require('express');
var router = express.Router();

var loginController = require('../controllers/login');

router.get('/', function(req, res) {
	console.log('yahaj aa gaye');
	// res.render('login');
	res.redirect('http://localhost:3001');
});

router.post('/', loginController.login);

module.exports = router;
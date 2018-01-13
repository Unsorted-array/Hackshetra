var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
	res.render('events', {
		description: "sdfsfbdzfgasfdbsdfga"
	});
});

module.exports = router;
var pgp = require('pg-promise');

var credentials = {
	host: 'localhost',
	port: 5432,
	database: 'event',
	user: 'chhavi',
	password: 'coderNo.12'
};

var db = pgp(credentials);

module.exports = db;

var pgp = require('pg-promise');

var credentials = {
	host: 'localhost',
	port: 5432,
	database: 'event_db',
	user: 'pd',
	password: 'pawan123'
};

var db = pgp(credentials);

module.exports = db;

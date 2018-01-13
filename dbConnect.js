var pgp = require('pg-promise');

var credentials = {
	host: 'localhost',
	port: 5432,
	database: 'event',
	user: 'YOUR_DATABASE_USER',
	password: 'YOUR_DATABASE_PASSWORD'
};

var db = pgp(credentials);

module.exports = db;

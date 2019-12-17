const express = require('express');
const router = express.Router();

const connect = require('../utils/sqlConnect');
// const sql = require('../utils/sql');

router.get('/', (req, res) => {

    console.log('at the main route');
    res.render('home');
})



router.get('/1', (req, res) => {

    // get the connection via the connection pool, and then run the query -> just one added step
    connect.getConnection((err, connection) => {
		if (err) { return console.log(err.message); }

		let query = `SELECT * FROM portfolio WHERE ID="1"`;

		connect.query(query, (err, rows) => {
			connection.release(); // send this connection back to the pool  

			if (err) {
				// will exit the function and log the error
				return console.log(err.message);
			}

			console.log(rows); // this should be your database query result

			// render our page
			res.render('portfolio', {data: rows}); // whatever page and data you're rendering
		});
	});
})

router.get('/2', (req, res) => {

    // get the connection via the connection pool, and then run the query -> just one added step
    connect.getConnection((err, connection) => {
		if (err) { return console.log(err.message); }

		let query = `SELECT * FROM portfolio WHERE ID="2"`;

		connect.query(query, (err, rows) => {
			connection.release(); // send this connection back to the pool  

			if (err) {
				// will exit the function and log the error
				return console.log(err.message);
			}

			console.log(rows); // this should be your database query result

			// render our page
			res.render('portfolio', {data: rows}); // whatever page and data you're rendering
		});
	});
})

router.get('/3', (req, res) => {

    // get the connection via the connection pool, and then run the query -> just one added step
    connect.getConnection((err, connection) => {
		if (err) { return console.log(err.message); }

		let query = `SELECT * FROM portfolio WHERE ID="3"`;

		connect.query(query, (err, rows) => {
			connection.release(); // send this connection back to the pool  

			if (err) {
				// will exit the function and log the error
				return console.log(err.message);
			}

			console.log(rows); // this should be your database query result

			// render our page
			res.render('portfolio', {data: rows}); // whatever page and data you're rendering
		});
	});
})

router.get('/4', (req, res) => {

    // get the connection via the connection pool, and then run the query -> just one added step
    connect.getConnection((err, connection) => {
		if (err) { return console.log(err.message); }

		let query = `SELECT * FROM portfolio WHERE ID="4"`;

		connect.query(query, (err, rows) => {
			connection.release(); // send this connection back to the pool  

			if (err) {
				// will exit the function and log the error
				return console.log(err.message);
			}

			console.log(rows); // this should be your database query result

			// render our page
			res.render('portfolio', {data: rows}); // whatever page and data you're rendering
		});
	});
})

module.exports = router;




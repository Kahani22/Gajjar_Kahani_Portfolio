var mysql = require('mysql');
var config = require('../config');

var connect = mysql.createPool({
  host: config.host,
  port: config.port,
  user: config.uname,
  password: config.pword,
  database: config.database,
  connectionLimit : 20,
  queueLimit : 100,
  waitForConnections : true
});

module.exports = connect;
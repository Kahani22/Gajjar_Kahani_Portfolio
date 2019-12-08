const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');
    console.log(req.params.id);

    let query = "SELECT ID, Name, image FROM tbl_movie";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { movie : result });
    })
})

router.get('/users/:id', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the user route');
    console.log(req.params.id); //1,2 or 3 or whatever comes after the slash

    let query = `SELECT * FROM tbl_info WHERE MovieID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array
        
        //convert the socila property into an array before we send it through
        // map is an array method that lets you map one value to another (convert it)
        // result[0].social = result[0].social.split(',').map(function(item) {
        //     item = item.trim(); //removes any empty white space from text 
        //     return item;
        // })
        // console.log('after trim / conversion:', result[0]);

        // render the home view with dynamic data
        res.json(result[0]);
    })
})

module.exports = router;
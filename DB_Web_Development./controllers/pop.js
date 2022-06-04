const { pool } = require('../utils/database');

exports.getPop = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM projects_per_organizations_and_per_programs')
        .then(([rows, fields]) => {
            res.render('pops.ejs', {
                pageTitle: "Explore All the Projects per Organizations and Programs",
                pops: rows,
            })
            // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}
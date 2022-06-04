const { pool } = require('../utils/database');

exports.getPpr = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM projects_per_researchers')
        .then(([rows, fields]) => {
            res.render('pprs.ejs', {
                pageTitle: "Take a look at the Projects our Researchers are working on",
                pprs: rows,
            })
            // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}
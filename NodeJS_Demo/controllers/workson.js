const { pool } = require('../utils/database');

exports.getWorksOn = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM WorksOn')
        .then(([rows, fields]) => {
            res.render('workson.ejs', {
                pageTitle: "Researchers who work on projects",
                works: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}


exports.postDeleteWorksOn = (req, res, next) => {
    /* get id from params */
    const id = req.params.researcher_id;
    
    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM workson WHERE researcher_id = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/workson');
        })
        .catch(err => {
            res.redirect('/');
        })
    })

}
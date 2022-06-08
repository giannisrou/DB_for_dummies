const { pool } = require('../utils/database');

exports.getQuery7 = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT DISTINCT executive.full_name AS full_name, company.org_name AS org_name, company.equity AS equity FROM executive INNER JOIN project ON project.exec_id = executive.exec_id INNER JOIN is_company AS company ON company.org_name = project.org_name ORDER BY equity DESC LIMIT 5')
        .then(([rows, fields]) => {
            res.render('query7.ejs', {
                pageTitle: "Our Top 5 Executives",
                query7: rows,
            })
            // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}
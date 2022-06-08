const { pool } = require('../utils/database');

exports.getQuery5 = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT field, field1, count(*) as c from pair_of_fields group by field, field1 order by c desc limit 3')
        .then(([rows, fields]) => {
            res.render('query5.ejs', {
                pageTitle: "Our Top 3 Pairs Of Scientific Fields",
                query5: rows,
            })
            // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}
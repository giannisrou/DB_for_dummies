const { pool } = require('../utils/database');

exports.getField = (req, res, next) => {


    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM Scientific_Fields')
        .then(([rows, fields]) => {
            res.render('fields.ejs', {
                pageTitle: "Information About Our Fields",
                field: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}


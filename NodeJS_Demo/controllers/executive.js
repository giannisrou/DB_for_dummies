const { pool } = require('../utils/database');

exports.getExec = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM Executive')
        .then(([rows, fields]) => {
            res.render('executives.ejs', {
                pageTitle: "Information About Our Executives",
                execs: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateExec = (req, res, next) => {
    const exec_id = req.body.exec_id;
    const full_name = req.body.full_name;
    

    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE executive SET full_name = '${full_name}' WHERE exec_id ='${exec_id}'`;

        conn.promise().query(sqlQuery, [full_name])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/executive');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}

exports.postDeleteExec = (req, res, next) => {
    /* get id from params */
    const exec_id = req.params.id;
    
    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM executive WHERE exec_id = ${exec_id}`;
    console.log(sqlQuery)
        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/executive');
        })
        .catch(err => {
            res.redirect('/');
        })
    })

}
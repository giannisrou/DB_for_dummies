const { pool } = require('../utils/database');

exports.getProg = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM Program')
        .then(([rows, fields]) => {
            res.render('programs.ejs', {
                pageTitle: "Information About Our Available Programs",
                progs: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateProg = (req, res, next) => {

    const funds = req.body.funds;
    const address = req.body.address;
    

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE organizations SET funds='${funds}', address='${address}'`;

        conn.promise().query(sqlQuery, [funds, address])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/program');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}


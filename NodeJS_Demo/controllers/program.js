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
    const prog_name = req.body.prog_name;
    const funds = req.body.funds;
    const address = req.body.address;
    

    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE program SET funds='${funds}', address='${address}'WHERE prog_name ='${prog_name}'`;

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

exports.postDeleteProg = (req, res, next) => {
    /* get id from params */
    const prog_name = req.params.id;
    
    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM program WHERE Prog_Name ='${prog_name}'`;
        console.log(sqlQuery)
        conn.promise().query(sqlQuery)
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
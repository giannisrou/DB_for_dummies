const { pool } = require('../utils/database');

exports.getTel = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM Telephone_Numbers')
        .then(([rows, fields]) => {
            res.render('telephones.ejs', {
                pageTitle: "Organizations' Contact Info",
                tel: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateTel = (req, res, next) => {

    const old_telephone_number = req.body.old_telephone_number;
    const new_telephone_number = req.body.new_telephone_number;
    const org_name = req.body.org_name;
    const type = req.body.type;

    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE telephone_numbers SET telephone_number='${new_telephone_number}',type='${type}' WHERE org_name='${org_name}' AND telephone_number='${old_telephone_number}' `;
        
        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/telephones');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}

exports.postDeleteTel = (req, res, next) => {
    /* get id from params */
    const number = req.params.telephone_number;

    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM telephone_numbers WHERE telephone_number = '${number}'`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/telephones');
        })
        .catch(err => {
            res.redirect('/');
        })
    })

}
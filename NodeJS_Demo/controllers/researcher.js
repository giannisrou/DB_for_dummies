const { pool } = require('../utils/database');

exports.getRes = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM Researcher')
        .then(([rows, fields]) => {
            res.render('researchers.ejs', {
                pageTitle: "Information About Our Available Researchers",
                res: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateRes = (req, res, next) => {

    const researcher_id = req.body.researcher_id;
    const first_name = req.body.first_name;
    const last_name = req.body.last_name;
    const dob = req.body.dob;
    const gender = req.body.gender;
    const org_name = req.body.org_name;

    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE researcher SET first_name='${first_name}',last_name='${last_name}',
        dob='${dob}', gender='${gender}', org_name='${org_name}' WHERE researcher_id=${researcher_id} `;

        conn.promise().query(sqlQuery, [first_name, last_name, dob, gender, org_name])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/researcher');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}

exports.postDeleteRes = (req, res, next) => {
    /* get id from params */
    const id = req.params.researcher_id;
    
    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM researcher WHERE Researcher_ID = ${id}`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/researcher');
        })
        .catch(err => {
            res.redirect('/');
        })
    })

}
const { pool } = require('../utils/database');

exports.getOrgs = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM organizations')
        .then(([rows, fields]) => {
            res.render('organizations.ejs', {
                pageTitle: "Organization's Page",
                orgs: rows,
            })
            // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateOrg = (req, res, next) => {

    const id = req.body.org_id;
    const org_name = req.body.org_name;
    const acronym = req.body.acronym;
    const street_name = req.body.street_name;
    const street_number = req.body.street_number;
    const city = req.body.city;
    const postal_code = req.body.postal_code;

    /* create the connection, execute query, flash respective message and redirect to grades route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE organizations SET acronym='${acronym}', street_name='${street_name}', street_number=${street_number}, city='${city}', postal_code=${postal_code} WHERE organizations.org_id = ${id}`;

        conn.promise().query(sqlQuery, [acronym, street_name, street_number, city, postal_code])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/organization');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}
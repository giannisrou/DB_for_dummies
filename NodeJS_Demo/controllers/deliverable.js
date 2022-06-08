const { pool } = require('../utils/database');

exports.getDel = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM Deliverable')
        .then(([rows, fields]) => {
            res.render('deliverable.ejs', {
                pageTitle: "Project's deliverables",
                del: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateDel = (req, res, next) => {

    const old_deliverable_title = req.body.old_deliverable_title;
    const new_deliverable_title = req.body.new_deliverable_title;
    const project_title = req.body.project_title;
    const deliverable_summary = req.body.deliverable_summary;


    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE deliverable SET deliverable_title='${new_deliverable_title}',deliverable_summary='${deliverable_summary}' WHERE project_title='${project_title}' AND deliverable_title='${old_deliverable_title}' `;
        //console.log(sqlQuery)
        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/deliverable');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}

exports.postDeleteDel = (req, res, next) => {
    /* get id from params */
    const deliverable_title = req.params.deliverable_title;
    
    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM deliverable WHERE deliverable_title = '${deliverable_title}'`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/deliverable');
        })
        .catch(err => {
            res.redirect('/');
        })
    })

}
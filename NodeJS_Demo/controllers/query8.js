const { pool } = require('../utils/database');

exports.getQuery8 = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('select concat(researcher.last_name," ",researcher.first_name) as full_name, count(workson.project_title) as NumOfProjects from researcher inner join workson on workson.researcher_id = researcher.researcher_id where workson.project_title not in (select project_title from deliverable) group by full_name having NumOfProjects>5 order by NumOfProjects desc')
        .then(([rows, fields]) => {
            res.render('query8.ejs', {
                pageTitle: "Our Researchers With No Deliverables",
                query8: rows,
            })
            // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}
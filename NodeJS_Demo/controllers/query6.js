const { pool } = require('../utils/database');

exports.getQuery6 = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT concat(researcher.last_name," ", researcher.first_name) as full_name, count(workson.project_title) as c from researcher inner join workson on workson.researcher_id = researcher.researcher_id inner join project on project.project_title = workson.project_title where researcher.dob >"1982-06-29" and project.end_date > "2022-06-12" group by full_name order by c desc')
        .then(([rows, fields]) => {
            res.render('query6.ejs', {
                pageTitle: "Our Top Youngest Professionals",
                query6: rows,
            })
            // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}
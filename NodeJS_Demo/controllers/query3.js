const { pool } = require('../utils/database');

exports.getQuery3 = (req, res, next) => {

    const field = req.query.field;

    const fields = [
        { id: 0, name: 'Humanities' },
        { id: 1, name: 'Natural Sciences and Technology' },
        { id: 2, name: 'Social Sciences' },
        { id: 3, name: 'IT and Economics' },
    ]

    if (field) {
        pool.getConnection((err, conn) => {
            
            conn.promise().query(`SELECT DISTINCT CONCAT(r.first_name, " ", r.last_name) as full_name, workson.project_title from workson inner join researcher as r on r.researcher_id=workson.researcher_id inner join project_field on project_field.project_title = workson.project_title inner join project on project.end_date and project.start_date where (project_field.field = '${field}' and project.end_date>"2022-01-01" and project.start_date < "2022-05-20")`)
            .then(([rows, fields]) => {
                res.render('query3.ejs', {
                    pageTitle: "Check out all the researchers that are working in the prefered field",
                    query3: rows,
                })
                console.log(rows)
            })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })
    }
    else {
        res.render('query3.ejs', {
            pageTitle: "Check out all the researchers that are working in the prefered field",
            query3: [],
            fields
        })
    }


}
const { pool } = require('../utils/database');

exports.getQuery1 = (req, res, next) => {

    pool.getConnection((err, conn) => {
        
        let start_date = req.query.start_date;
        let executive_name = req.query.executive_name;
        let duration = req.query.duration;
        let executives, result;

        let fetchExecutivesPromise = new Promise((resolve, reject) => {
            conn.promise().query(`SELECT * FROM Executive`)
            .then(([rows, fields]) => {
                executives = rows;
                resolve();
            })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })

        let fetchResPromise = new Promise((resolve, reject) => {
            let sqlQuery = `select project_title, executive_name, date, funds, duration, researcher_name from projectaki WHERE 1=1`;
            
            if (start_date) sqlQuery += ` AND date='${start_date}'`;
            if (executive_name) sqlQuery += ` AND executive_name='${executive_name}'`;
            if (duration) sqlQuery += ` AND duration=${duration}`

            conn.promise().query(sqlQuery)
            .then(([rows, fields]) => {
                result = rows;
                resolve();
            })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })
        
        Promise.all([fetchExecutivesPromise, fetchResPromise]).then(() => {
            res.render('query1.ejs', {
                query1s: result,
                executives,
                pageTitle: 'Select Projects based on multiple criteria'
            })
        });



    })
}
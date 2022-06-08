const { pool } = require('../utils/database');

exports.getLanding = (req, res, next) => {


    let query4;

    /* create the connection */
    pool.getConnection((err, conn) => {
      
        let thequery4 = new Promise((resolve, reject) => {
            conn.promise()
            .query("SELECT DISTINCT r3a.org_name FROM((SELECT * FROM(SELECT r1a.org_name, r1a.year1, COUNT(r1a.project_title) AS cc FROM(SELECT org1.org_name, p1.project_title, YEAR(p1.start_date) AS year1 FROM Organizations org1 INNER JOIN Project p1 ON org1.org_name = p1.org_name) r1a GROUP BY r1a.org_name, r1a.year1) r2a WHERE r2a.cc > 9) r3a INNER JOIN(SELECT * FROM(SELECT r1b.org_name, r1b.year2, COUNT(r1b.project_title) AS cc FROM(SELECT org1.org_name, p1.project_title, YEAR(p1.start_date) AS year2 FROM Organizations org1 INNER JOIN Project p1 ON org1.org_name = p1.org_name) r1b GROUP BY r1b.org_name, r1b.year2) r2b WHERE r2b.cc > 9) r3b ON r3a.org_name = r3b.org_name)  WHERE ABS(r3a.year1 - r3b.year2) = 1 AND r3a.cc = r3b.cc")
            .then(([rows, fields]) => {
                query4 = rows[0].org_name;
                resolve();
             })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })        

        /* when queries promises finish render respective data */
        Promise.all([thequery4]).then(() => {
            res.render('landing.ejs', {
                pageTitle: "Landing Page",
                query4
            })
        });
    
    })

}; 
exports.getForms = (req, res, next) => {

    let executives, supervisors, evalutators, organizations, fields, programs;


    pool.getConnection((err, conn) => {

        let executivesPromise = new Promise((resolve, reject) => {

            conn.promise()
            .query("SELECT * FROM Executive")
            .then(([rows, fields]) => {
                executives = rows;
                resolve();
             })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })

        let evaluatorsPromise = new Promise((resolve, reject) => {

            conn.promise()
            .query("SELECT * FROM Researcher")
            .then(([rows, fields]) => {
                evaluators = rows;
                resolve();
             })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })

        let organizationsPromise = new Promise((resolve, reject) => {

            conn.promise()
            .query("SELECT * FROM Organizations")
            .then(([rows, fields]) => {
                organizations = rows;
                resolve();
             })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })

        let projectPromise = new Promise((resolve, reject) => {

            conn.promise()
            .query("SELECT * FROM project")
            .then(([rows, fields]) => {
                projects = rows;
                resolve();
             })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })
        let programPromise = new Promise((resolve, reject) => {

            conn.promise()
            .query("SELECT * FROM Program")
            .then(([rows, fields]) => {
                programs = rows;
                resolve();
             })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })
        let fieldPromise = new Promise((resolve, reject) => {

            conn.promise()
            .query("SELECT * FROM Scientific_Fields")
            .then(([rows, fields]) => {
                field = rows;
                resolve();
             })
            .then(() => pool.releaseConnection(conn))
            .catch(err => console.log(err))
        })

        Promise.all([executivesPromise, evaluatorsPromise, organizationsPromise, programPromise, projectPromise, fieldPromise]).then(() => {
            res.render('create.ejs', {
                pageTitle: "Creation Forms Page",
                executives,
                programs,
                projects,
                supervisors,
                evalutators,
                fields,
                orgs: organizations
            })
        });

    })



}
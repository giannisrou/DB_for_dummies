const { pool } = require('../utils/database');

exports.getProj = (req, res, next) => {

    /* create the connection, execute query, render data */
    pool.getConnection((err, conn) => {
        
        conn.promise().query('SELECT * FROM Project')
        .then(([rows, fields]) => {
            res.render('projects.ejs', {
                pageTitle: "Information About Our Available Projects",
                projs: rows,
            })
             // console.log(rows)
        })
        .then(() => pool.releaseConnection(conn))
        .catch(err => console.log(err))
    })

}

exports.postUpdateProj = (req, res, next) => {

    const project_title = req.body.project_title;
    const description = req.body.description
    const funds = req.body.funds;
    const start_date = req.body.start_date;
    const end_date = req.body.end_date;
    const supervision_duration = req.body.supervision_duration;
    const evaluation_date = req.body.evaluation_date;
    const evaluation = req.body.evaluation;
    const exec_id = req.body.exec_id;
    const supervisor_id = req.body.supervisor_id;
    const evaluator_id = req.body.evaluator_id;
    const org_name = req.body.org_name;
    const prog_name = req.body.prog_name;


    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `UPDATE project SET description = '${description}', funds='${funds}', start_date='${start_date}', 
        end_date = '${end_date}', supervision_duration = '${supervision_duration}', evaluation_date = '${evaluation_date}',
        evaluation = '${evaluation}', exec_id = '${exec_id}', supervisor_id = '${supervisor_id}', evaluator_id = '${evaluator_id}', 
        org_name = '${org_name}', prog_name = '${prog_name}' WHERE project.project_title = '${project_title}'`;

        conn.promise().query(sqlQuery, [description, funds, start_date, end_date, supervision_duration, evaluation_date, evaluation, exec_id, supervisor_id, evaluator_id, org_name, prog_name])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/project');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}

exports.postDeleteProj = (req, res, next) => {
    /* get id from params */
    const project_name = req.params.project_title;
    
    /* create the connection, execute query and redirect to programs route */
    pool.getConnection((err, conn) => {
        var sqlQuery = `DELETE FROM project WHERE Project_Title = '${project_name}'`;

        conn.promise().query(sqlQuery)
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/project');
        })
        .catch(err => {
            res.redirect('/');
        })
    })

}
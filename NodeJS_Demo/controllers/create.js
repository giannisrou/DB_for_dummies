const { pool } = require('../utils/database');


/* Controller to create a new projects in the database */
exports.postProject = (req, res, next) => {

    /* get necessary data sent */
    const project_title = req.body.project_title;
    const description = req.body.description;
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
    console.log(req.body)
    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO project VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
console.log(sqlQuery)
        conn.promise().query(sqlQuery, [project_title, description, funds, start_date, end_date, supervision_duration, evaluation_date, evaluation, exec_id, supervisor_id, evaluator_id, org_name, prog_name])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}
exports.postProgram = (req, res, next) => {

    /* get necessary data sent */
    const prog_name = req.body.prog_name;
    const funds = req.body.funds;
    const address = req.body.address;


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO program VALUES(?, ?, ?)`;

        conn.promise().query(sqlQuery, [prog_name,  funds, address])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}
exports.postOrganization = (req, res, next) => {

    /* get necessary data sent */
    const org_name = req.body.org_name;
    const acronym = req.body.acronym;
    const street_name = req.body.street_name;
    const street_number = req.body.street_number;
    const city = req.body.city;
    const postal_code = req.body.postal_code;


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO organizations (Org_Name, ACRONYM, street_name, street_number, city, postal_code) VALUES(?, ?, ?, ?, ?, ?)`;
        
        conn.promise().query(sqlQuery, [org_name,  acronym, street_name, street_number, city , postal_code])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            console.log(err)
            res.redirect('/');
        })
    })
}
exports.postDeliverable = (req, res, next) => {

    /* get necessary data sent */
    const deliverable_title = req.body.deliverable_title;
    const project_title = req.body.project_title;
    const deliverable_summary = req.body.deliverable_summary;
    


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO deliverable VALUES(?, ?, ?)`;

        conn.promise().query(sqlQuery, [deliverable_title, project_title, deliverable_summary])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}

exports.postTelephone = (req, res, next) => {

    /* get necessary data sent */
    const telephone_number = req.body.telephone_number;
    const org_name = req.body.org_name;
    const type = req.body.type;
    


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO telephone_numbers VALUES(?, ?, ?)`;

        conn.promise().query(sqlQuery, [telephone_number, org_name, type])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}
exports.postWorksOn = (req, res, next) => {

    /* get necessary data sent */
    const researcher_id = req.body.researcher_id;
    const project_title = req.body.project_title;
    


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO workson VALUES(?, ?)`;

        conn.promise().query(sqlQuery, [researcher_id, project_title])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}
exports.postIsCompany = (req, res, next) => {

    /* get necessary data sent */
    const org_name = req.body.org_name;
    const equity = req.body.equity;
    


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO Is_Company VALUES(?, ?)`;

        conn.promise().query(sqlQuery, [org_name, equity])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}
exports.postIsUniversity = (req, res, next) => {

    /* get necessary data sent */
    const org_name = req.body.org_name;
    const funds = req.body.funds;
    


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO Is_University VALUES(?, ?)`;

        conn.promise().query(sqlQuery, [org_name, funds])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}

exports.postIsResearchCenter = (req, res, next) => {

    /* get necessary data sent */
    const org_name = req.body.org_name;
    const budget = req.body.budget;
    const funds = req.body.funds;


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO Is_ResearchCenter VALUES(?,?,?)`;

        conn.promise().query(sqlQuery, [org_name,budget, funds])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}

exports.postExecutive = (req, res, next) => {

    /* get necessary data sent */
    const exec_id = req.body.exec_id;
    const full_name = req.body.full_name;


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO executive VALUES(?, ?)`;

        conn.promise().query(sqlQuery, [exec_id, full_name])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}

exports.postProject_Field = (req, res, next) => {

    /* get necessary data sent */
    const project_title = req.body.project_title;
    const field = req.body.field;


    pool.getConnection((err, conn) => {
        var sqlQuery = `INSERT INTO project_field VALUES(?, ?)`;
        console.log(sqlQuery)
        conn.promise().query(sqlQuery, [project_title, field])
        .then(() => {
            pool.releaseConnection(conn);
            res.redirect('/get/forms');
        })
        .catch(err => {
            res.redirect('/');
        })
    })
}

exports.postResearcher = (req, res, next) => {

    const researcher_id = req.body.researcher_id;
    const first_name = req.body.first_name;
    const last_name = req.body.last_name;
    const dob = req.body.dob;
    const gender = req.body.gender;
    const org_name = req.body.org_name;
    const org_id = req.body.org_id

    pool.getConnection((err, conn) => {
    var sqlQuery = `INSERT INTO researcher VALUES(?, ?, ?, ?, ?, ?)`;

    conn.promise().query(sqlQuery, [researcher_id, first_name, last_name, dob, gender, org_name])
    .then(() => {
        pool.releaseConnection(conn);
        res.redirect('/get/forms');
    })
    .catch(err => {
        res.redirect('/');
    })
})
}

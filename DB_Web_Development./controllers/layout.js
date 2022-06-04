const { pool } = require('../utils/database');

exports.getLanding = (reg, res, next) => {
        res.render('landing.ejs', {
            pageTitle: "Landing Page"
        })
} 
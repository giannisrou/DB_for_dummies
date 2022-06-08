const express = require('express');
const query3Controller = require('../controllers/query3');

const router = express.Router();

//  ..../organization
router.get('/', query3Controller.getQuery3);
// ..../organization/update/id

module.exports = router;
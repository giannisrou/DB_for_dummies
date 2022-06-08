const express = require('express');
const query1Controller = require('../controllers/query1');

const router = express.Router();

//  ..../organization

router.get('/', query1Controller.getQuery1);
module.exports = router;
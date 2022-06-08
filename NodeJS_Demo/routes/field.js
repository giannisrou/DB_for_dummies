const express = require('express');
const fieldController = require('../controllers/field');

const router = express.Router();

router.get('/', fieldController.getField);


module.exports = router;
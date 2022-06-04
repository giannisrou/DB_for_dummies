const express = require('express');
const pprController = require('../controllers/ppr');

const router = express.Router();

//  ..../ppr
router.get('/', pprController.getPpr);



module.exports = router;
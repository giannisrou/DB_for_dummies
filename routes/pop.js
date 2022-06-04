const express = require('express');
const popController = require('../controllers/pop');

const router = express.Router();

//  ..../pop
router.get('/', popController.getPop);




module.exports = router;

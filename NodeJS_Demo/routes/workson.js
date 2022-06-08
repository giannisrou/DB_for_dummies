const express = require('express');
const worksonController = require('../controllers/workson');

const router = express.Router();

router.get('/', worksonController.getWorksOn);

router.post('/delete/:id', worksonController.postDeleteWorksOn);

module.exports = router;
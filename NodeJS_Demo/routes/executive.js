const express = require('express');
const executiveController = require('../controllers/executive');

const router = express.Router();

//  ..../organization
router.get('/', executiveController.getExec);
// ..../organization/update/id
router.post('/update/:id', executiveController.postUpdateExec)
router.post('/delete/:id', executiveController.postDeleteExec)

module.exports = router;
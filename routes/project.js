const express = require('express');
const programController = require('../controllers/project');

const router = express.Router();

//  ..../organization
router.get('/', programController.getProj);
// ..../organization/update/id
router.post('/update/:id', programController.postUpdateProj)
router.post('/delete/:id', programController.postDeleteProj)


module.exports = router;
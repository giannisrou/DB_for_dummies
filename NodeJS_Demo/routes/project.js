const express = require('express');
const projectController = require('../controllers/project');

const router = express.Router();

//  ..../organization
router.get('/', projectController.getProj);
// ..../organization/update/id
router.post('/update/:id', projectController.postUpdateProj)
router.post('/delete/:id', projectController.postDeleteProj)


module.exports = router;
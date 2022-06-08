const express = require('express');
const programController = require('../controllers/program');

const router = express.Router();

//  ..../organization
router.get('/', programController.getProg);
// ..../organization/update/id
router.post('/update/:id', programController.postUpdateProg)
router.post('/delete/:id', programController.postDeleteProg)


module.exports = router;
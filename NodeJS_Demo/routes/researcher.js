const express = require('express');
const researcherController = require('../controllers/researcher');

const router = express.Router();

router.get('/', researcherController.getRes);
router.post('/update/:id', researcherController.postUpdateRes);
router.post('/delete/:id', researcherController.postDeleteRes);

module.exports = router;
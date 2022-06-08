const express = require('express');
const deliverableController = require('../controllers/deliverable');

const router = express.Router();

router.get('/', deliverableController.getDel);
router.post('/update/', deliverableController.postUpdateDel);
router.post('/delete/:deliverable_title', deliverableController.postDeleteDel);

module.exports = router;
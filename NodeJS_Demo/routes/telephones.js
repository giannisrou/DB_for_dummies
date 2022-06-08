const express = require('express');
const telephonesController = require('../controllers/telephones');

const router = express.Router();

router.get('/', telephonesController.getTel);
router.post('/update/', telephonesController.postUpdateTel);
router.post('/delete/:telephone_number', telephonesController.postDeleteTel);

module.exports = router;
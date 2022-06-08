const express = require('express');
const organizationController = require('../controllers/organization');

const router = express.Router();

//  ..../organization
router.get('/', organizationController.getOrgs);
// ..../organization/update/id
router.post('/update/:id', organizationController.postUpdateOrg)
router.post('/delete/:id', organizationController.postDeleteOrg)

module.exports = router;
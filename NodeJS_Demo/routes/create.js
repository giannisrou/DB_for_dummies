const express = require('express');
const createController = require('../controllers/create');

const router = express.Router();

router.post('/project', createController.postProject);
router.post('/researcher', createController.postResearcher);
router.post('/program', createController.postProgram);
router.post('/executive', createController.postExecutive);
router.post('/organization', createController.postOrganization);
router.post('/deliverable', createController.postDeliverable);
router.post('/telephone', createController.postTelephone);
router.post('/works', createController.postWorksOn);
router.post('/iscompany', createController.postIsCompany);
router.post('/isuniversity', createController.postIsUniversity);
router.post('/isresearchcenter', createController.postIsResearchCenter);
router.post('/projectfield', createController.postProject_Field);
module.exports = router;
const express = require('express');
const router = express.Router();
const mpinController = require('../controllers/mpinController');

// Define routes
router.post('/', mpinController.createOrUpdateMpin);
router.get('/:mobile_number', mpinController.getMpin);
router.delete('/:mobile_number', mpinController.deleteMpin);

module.exports = router;

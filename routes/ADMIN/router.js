const express = require('express');
const router = express.Router();
// const verifyToken = require('../../verifyToken');
// Import controllers

const { signin, signup } = require("../../controllers/ADMIN/userController");
const { login } = require("../../controllers/ADMIN/loginController");

const menuController = require('../../controllers/ADMIN/menuController');
const moneytransController = require('../../controllers/ADMIN/moneytransController');
const municplController = require('../../controllers/ADMIN/municplController');
const owcommissisonController = require('../../controllers/ADMIN/owcommissisonController');
const owrepodataController = require('../../controllers/ADMIN/owrepodataController');
const packageController = require('../../controllers/ADMIN/packageController');
const pgasController = require('../../controllers/ADMIN/pgasController');
const pocinfoController = require('../../controllers/ADMIN/pocinfoController');
const providerController = require('../../controllers/ADMIN/providerController');
const retailerController = require('../../controllers/ADMIN/retailerController');
const superdistributorController = require('../../controllers/ADMIN/superdistributorController');
const transhistController = require('../../controllers/ADMIN/transhistController');
const userkycController = require('../../controllers/ADMIN/userkycController');
const uwrechargeController = require('../../controllers/ADMIN/uwrechargeController');
const uwreportController = require('../../controllers/ADMIN/uwreportController');
const waterproviderController = require('../../controllers/ADMIN/waterproviderController');
const whitelistController = require('../../controllers/ADMIN/whitelistController');

const fundController = require("../../controllers/fundController");
const getbalanceController = require('../../controllers/getbalanceController');

// Define routes

router.route("/admin/signin").post(signin);
router.route("/admin/signup").post(signup);

router.route("/admin/login").post(login);

router.post('/admin/create/menus', menuController.createMenu);
router.get('/admin/get/menus/:id', menuController.getMenuById);
router.get('/admin/get/menus', menuController.getAllMenus);
router.put('/admin/update/menus/:id', menuController.updateMenuById);
router.delete('/admin/delete/menus/:id', menuController.deleteMenuById);

router.post('/admin/create/moneytrans', moneytransController.createTransaction);
router.get('/admin/get/moneytrans/:id', moneytransController.getTransactionById);
router.get('/admin/get/moneytrans', moneytransController.getAllTransactions);
router.put('/admin/update/moneytrans/:id', moneytransController.updateTransactionById);
router.delete('/admin/delete/moneytrans/:id', moneytransController.deleteTransactionById);

router.post('/admin/create/municpl', municplController.createRecord);
router.get('/admin/get/municpl/:id', municplController.getRecordById);
router.get('/admin/get/municpl', municplController.getAllRecords);
router.put('/admin/update/municpl/:id', municplController.updateRecordById);
router.delete('/admin/delete/municpl/:id', municplController.deleteRecordById);

router.post('/admin/create/owcommission', owcommissisonController.createOWRecord);
router.get('/admin/get/owcommission/:id', owcommissisonController.getRecordById);
router.get('/admin/get/owcommission', owcommissisonController.getAllRecords);
router.put('/admin/update/owcommission/:id', owcommissisonController.updateRecordById);
router.delete('/admin/delete/owcommission/:id', owcommissisonController.deleteRecordById);

router.post('/admin/create/owrepodata', owrepodataController.createRecord);
router.get('/admin/get/owrepodata/:id', owrepodataController.getRecordById);
router.get('/admin/get/owrepodata', owrepodataController.getAllRecords);
router.put('/admin/update/owrepodata/:id', owrepodataController.updateRecordById);
router.delete('/admin/delete/owrepodata/:id', owrepodataController.deleteRecordById);

router.post('/admin/create/package', packageController.createRecord);
router.get('/admin/get/package/:id', packageController.getRecordById);
router.get('/admin/get/package', packageController.getAllRecords);
router.put('/admin/update/package/:id', packageController.updateRecordById);
router.delete('/admin/delete/package/:id', packageController.deleteRecordById);

router.post('/admin/create/pgas', pgasController.createRecord);
router.get('/admin/get/pgas/:id', pgasController.getRecordById);
router.get('/admin/get/pgas', pgasController.getAllRecords);
router.put('/admin/update/pgas/:id', pgasController.updateRecordById);
router.delete('/admin/delete/pgas/:id', pgasController.deleteRecordById);

router.post('/admin/create/pocinfo', pocinfoController.createRecord);
router.get('/admin/get/pocinfo/:id', pocinfoController.getRecordById);
router.get('/admin/get/pocinfo', pocinfoController.getAllRecords);
router.put('/admin/update/pocinfo/:id', pocinfoController.updateRecordById);
router.delete('/admin/delete/pocinfo/:id', pocinfoController.deleteRecordById);

router.post('/admin/create/provider', providerController.createRecord);
router.get('/admin/get/provider/:id', providerController.getRecordById);
router.get('/admin/get/provider', providerController.getAllRecords);
router.put('/admin/update/provider/:id', providerController.updateRecordById);
router.delete('/admin/delete/provider/:id', providerController.deleteRecordById);

router.post('/admin/create/retailer', retailerController.createRecord);
router.get('/admin/get/retailer/:id', retailerController.getRecordById);
router.get('/admin/get/retailer', retailerController.getAllRecords);
router.put('/admin/update/retailer/:id', retailerController.updateRecordById);
router.delete('/admin/delete/retailer/:id', retailerController.deleteRecordById);

router.post('/admin/create/superdistributor', superdistributorController.createRecord);
router.get('/admin/get/superdistributor/:id', superdistributorController.getRecordById);
router.get('/admin/get/superdistributor', superdistributorController.getAllRecords);
router.put('/admin/update/superdistributor/:id', superdistributorController.updateRecordById);
router.delete('/admin/delete/superdistributor/:id', superdistributorController.deleteRecordById);

router.post('/admin/create/transhist', transhistController.createRecord);
router.get('/admin/get/transhist/:id', transhistController.getRecordById);
router.get('/admin/get/transhist', transhistController.getAllRecords);
router.put('/admin/update/transhist/:id', transhistController.updateRecordById);
router.delete('/admin/delete/transhist/:id', transhistController.deleteRecordById);

router.post('/admin/create/userkyc', userkycController.createRecord);
router.get('/admin/get/userkyc/:id', userkycController.getRecordById);
router.get('/admin/get/userkyc', userkycController.getAllRecords);
router.put('/admin/update/userkyc/:id', userkycController.updateRecordById);
router.delete('/admin/delete/userkyc/:id', userkycController.deleteRecordById);

router.post('/admin/create/uwrecharge', uwrechargeController.createRecord);
router.get('/admin/get/uwrecharge/:id', uwrechargeController.getRecordById);
router.get('/admin/get/uwrecharge', uwrechargeController.getAllRecords);
router.put('/admin/update/uwrecharge/:id', uwrechargeController.updateRecordById);
router.delete('/admin/delete/uwrecharge/:id', uwrechargeController.deleteRecordById);

router.post('/admin/create/uwreport', uwreportController.createRecord);
router.get('/admin/get/uwreport/:id', uwreportController.getRecordById);
router.get('/admin/get/uwreport', uwreportController.getAllRecords);
router.put('/admin/update/uwreport/:id', uwreportController.updateRecordById);
router.delete('/admin/delete/uwreport/:id', uwreportController.deleteRecordById);

router.post('/admin/create/waterprovider', waterproviderController.createRecord);
router.get('/admin/get/waterprovider/:id', waterproviderController.getRecordById);
router.get('/admin/get/waterprovider', waterproviderController.getAllRecords);
router.put('/admin/update/waterprovider/:id', waterproviderController.updateRecordById);
router.delete('/admin/delete/waterprovider/:id', waterproviderController.deleteRecordById);

router.post('/admin/create/whitelist', whitelistController.createRecord);
router.get('/admin/get/whitelist/:id', whitelistController.getRecordById);
router.get('/admin/get/whitelist', whitelistController.getAllRecords);
router.put('/admin/update/whitelist/:id', whitelistController.updateRecordById);
router.delete('/admin/delete/whitelist/:id', whitelistController.deleteRecordById);

router.post("/admin/transfer", fundController.transferFunds);

router.get("/admin/balances", getbalanceController.getAllBalances);
router.get("/admin/balances/:userId", getbalanceController.getUserBalance);

module.exports = router;

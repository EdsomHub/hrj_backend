const express = require("express");
const router = express.Router();
const verifyToken = require("../middleware/auth");
// Import controllers
// const {
//   signin,
//   signup,
//   getUserTypes,
// } = require("../controllers/userController");
const { getUserBalance } = require("../controllers/getbalanceController");
const { login } = require("../controllers/loginController");
const loginController = require("../controllers/loginController");
const menuController = require("../controllers/menuController");
const moneytransController = require("../controllers/moneytransController");
const municplController = require("../controllers/municplController");
const owcommissisonController = require("../controllers/owcommissisonController");
const owrepodataController = require("../controllers/owrepodataController");
const packageController = require("../controllers/packageController");
const pgasController = require("../controllers/pgasController");
const pocinfoController = require("../controllers/pocinfoController");
const providerController = require("../controllers/providerController");
const retailerController = require("../controllers/retailerController");
const superdistributorController = require("../controllers/superdistributorController");
const transhistController = require("../controllers/transhistController");
const userkycController = require("../controllers/userkycController");
const uwrechargeController = require("../controllers/uwrechargeController");
const uwreportController = require("../controllers/uwreportController");
const waterproviderController = require("../controllers/waterproviderController");
const whitelistController = require("../controllers/whitelistController");
const fundController = require("../controllers/fundController");
const channelpartnerController = require("../controllers/channelpartnerController");
// const paymenttransactionController = require("../controllers/paymenttransactionController");

const paymenttransactionsController = require('../controllers/paymenttransactionsController');
const {savePayment, getAllPayments} = require("../controllers/paymenttransactionsController");
//otp
const otpController = require('../controllers/otpController');
const {sendOTP, verifyOTP} = require("../controllers/otpController");


// Define routes
// router.route("/signin").post(signin);
// router.route("/signup").post(signup);
// router.route("/usertype").get(verifyToken, getUserTypes);
router.route("/balance").get(verifyToken, getUserBalance);
// router.route("/login").post(login);
router.post("/login", loginController.login);
router.post("/create/menus", verifyToken, menuController.createMenu);
router.get("/get/menus/:id", verifyToken, menuController.getMenuById);
router.get("/get/menus", verifyToken, menuController.getAllMenus);
router.put("/update/menus/:id", verifyToken, menuController.updateMenuById);
router.delete("/delete/menus/:id", verifyToken, menuController.deleteMenuById);

// Route to send OTP
router.post('/send-otp', otpController.sendOTP);
router.route('/sotp').post(sendOTP);

// Route to verify OTP
router.post('/verify-otp', otpController.verifyOTP);

router.post(
  "/create/moneytrans",
  verifyToken,
  moneytransController.createTransaction
);
router.get(
  "/get/moneytrans/:id",
  verifyToken,
  moneytransController.getTransactionById
);
router.get(
  "/get/moneytrans",
  verifyToken,
  moneytransController.getAllTransactions
);
router.put(
  "/update/moneytrans/:id",
  verifyToken,
  moneytransController.updateTransactionById
);
router.delete(
  "/delete/moneytrans/:id",
  verifyToken,
  moneytransController.deleteTransactionById
);
router.post("/create/municpl", verifyToken, municplController.createRecord);
router.get("/get/municpl/:id", verifyToken, municplController.getRecordById);
router.get("/get/municpl", verifyToken, municplController.getAllRecords);
router.put(
  "/update/municpl/:id",
  verifyToken,
  municplController.updateRecordById
);
router.delete(
  "/delete/municpl/:id",
  verifyToken,
  municplController.deleteRecordById
);
router.post(
  "/create/owcommission",
  verifyToken,
  owcommissisonController.createOWRecord
);
router.get(
  "/get/owcommission/:id",
  verifyToken,
  owcommissisonController.getRecordById
);
router.get(
  "/get/owcommission",
  verifyToken,
  owcommissisonController.getAllRecords
);
router.put(
  "/update/owcommission/:id",
  verifyToken,
  owcommissisonController.updateRecordById
);
router.delete(
  "/delete/owcommission/:id",
  verifyToken,
  owcommissisonController.deleteRecordById
);
router.post(
  "/create/owrepodata",
  verifyToken,
  owrepodataController.createRecord
);
router.get(
  "/get/owrepodata/:id",
  verifyToken,
  owrepodataController.getRecordById
);
router.get("/get/owrepodata", verifyToken, owrepodataController.getAllRecords);
router.put(
  "/update/owrepodata/:id",
  verifyToken,
  owrepodataController.updateRecordById
);
router.delete(
  "/delete/owrepodata/:id",
  verifyToken,
  owrepodataController.deleteRecordById
);
router.post("/create/package", verifyToken, packageController.createRecord);
router.get("/get/package/:id", verifyToken, packageController.getRecordById);
router.get("/get/package", verifyToken, packageController.getAllRecords);
router.put(
  "/update/package/:id",
  verifyToken,
  packageController.updateRecordById
);
router.delete(
  "/delete/package/:id",
  verifyToken,
  packageController.deleteRecordById
);
router.post("/create/pgas", verifyToken, pgasController.createRecord);
router.get("/get/pgas/:id", verifyToken, pgasController.getRecordById);
router.get("/get/pgas", verifyToken, pgasController.getAllRecords);
router.put("/update/pgas/:id", verifyToken, pgasController.updateRecordById);
router.delete("/delete/pgas/:id", verifyToken, pgasController.deleteRecordById);
router.post("/create/pocinfo", verifyToken, pocinfoController.createRecord);
router.get("/get/pocinfo/:id", verifyToken, pocinfoController.getRecordById);
router.get("/get/pocinfo", verifyToken, pocinfoController.getAllRecords);
router.put(
  "/update/pocinfo/:id",
  verifyToken,
  pocinfoController.updateRecordById
);
router.delete(
  "/delete/pocinfo/:id",
  verifyToken,
  pocinfoController.deleteRecordById
);
router.post("/create/provider", verifyToken, providerController.createRecord);
router.get("/get/provider/:id", verifyToken, providerController.getRecordById);
router.get("/get/provider", verifyToken, providerController.getAllRecords);
router.put(
  "/update/provider/:id",
  verifyToken,
  providerController.updateRecordById
);
router.delete(
  "/delete/provider/:id",
  verifyToken,
  providerController.deleteRecordById
);
router.post("/create/retailer", verifyToken, retailerController.createRecord);
router.get("/get/retailer/:id", verifyToken, retailerController.getRecordById);
router.get("/get/retailer", verifyToken, retailerController.getAllRecords);
router.put(
  "/update:id",
  verifyToken,
  retailerController.updateRecordById
);
router.delete(
  "/delete/retailer/:id",
  verifyToken,
  retailerController.deleteRecordById
);

router.post(
  "/create/channelpartner",
  verifyToken,
  channelpartnerController.createChannelPartner
);
router.get(
  "/get/channelpartner/:id",
  verifyToken,
  channelpartnerController.getChannelPartnerById
);
router.get(
  "/get/channelpartner",
  verifyToken,
  channelpartnerController.getAllChannelPartners
);
router.put(
  "/update/channelpartner/:id",
  verifyToken,
  channelpartnerController.updateChannelPartner
);
router.delete(
  "/delete/channelpartner/:id",
  verifyToken,
  channelpartnerController.deleteChannelPartner
);
router.post(
  "/create/superdistributor",
  verifyToken,
  superdistributorController.createRecord
);
router.get(
  "/get/superdistributor/:id",
  verifyToken,
  superdistributorController.getRecordById
);
router.get(
  "/get/superdistributor",
  verifyToken,
  superdistributorController.getAllRecords
);
router.put(
  "/update/superdistributor/:id",
  verifyToken,
  superdistributorController.updateRecordById
);
router.delete(
  "/delete/superdistributor/:id",
  verifyToken,
  superdistributorController.deleteRecordById
);
router.post("/create/transhist", verifyToken, transhistController.createRecord);
router.get(
  "/get/transhist/:id",
  verifyToken,
  transhistController.getRecordById
);
router.get("/get/transhist", verifyToken, transhistController.getAllRecords);
router.put(
  "/update/transhist/:id",
  verifyToken,
  transhistController.updateRecordById
);
router.delete(
  "/delete/transhist/:id",
  verifyToken,
  transhistController.deleteRecordById
);
router.post("/create/userkyc", verifyToken, userkycController.createRecord);
router.get("/get/userkyc/:id", verifyToken, userkycController.getRecordById);
router.get("/get/userkyc", verifyToken, userkycController.getAllRecords);
router.put(
  "/update/userkyc/:id",
  verifyToken,
  userkycController.updateRecordById
);
router.delete(
  "/delete/userkyc/:id",
  verifyToken,
  userkycController.deleteRecordById
);
router.post(
  "/create/uwrecharge",
  verifyToken,
  uwrechargeController.createRecord
);
router.get(
  "/get/uwrecharge/:id",
  verifyToken,
  uwrechargeController.getRecordById
);
router.get("/get/uwrecharge", verifyToken, uwrechargeController.getAllRecords);
router.put(
  "/update/uwrecharge/:id",
  verifyToken,
  uwrechargeController.updateRecordById
);
router.delete(
  "/delete/uwrecharge/:id",
  verifyToken,
  uwrechargeController.deleteRecordById
);
router.post("/create/uwreport", verifyToken, uwreportController.createRecord);
router.get("/get/uwreport/:id", verifyToken, uwreportController.getRecordById);
router.get("/get/uwreport", verifyToken, uwreportController.getAllRecords);
router.put(
  "/update/uwreport/:id",
  verifyToken,
  uwreportController.updateRecordById
);
router.delete(
  "/delete/uwreport/:id",
  verifyToken,
  uwreportController.deleteRecordById
);
router.post(
  "/create/waterprovider",
  verifyToken,
  waterproviderController.createRecord
);
router.get(
  "/get/waterprovider/:id",
  verifyToken,
  waterproviderController.getRecordById
);
router.get(
  "/get/waterprovider",
  verifyToken,
  waterproviderController.getAllRecords
);
router.put(
  "/update/waterprovider/:id",
  verifyToken,
  waterproviderController.updateRecordById
);
router.delete(
  "/delete/waterprovider/:id",
  verifyToken,
  waterproviderController.deleteRecordById
);
router.post("/create/whitelist", verifyToken, whitelistController.createRecord);
router.get(
  "/get/whitelist/:id",
  verifyToken,
  whitelistController.getRecordById
);
router.get("/get/whitelist", verifyToken, whitelistController.getAllRecords);
router.put(
  "/update/whitelist/:id",
  verifyToken,
  whitelistController.updateRecordById
);
router.delete(
  "/delete/whitelist/:id",
  verifyToken,
  whitelistController.deleteRecordById
);
router.post("/transfer", verifyToken, fundController.transferFunds);

// router.post(
//   "/create/paymenttransaction",
//   paymenttransactionController.createRecord
// );
// router.get(
//   "/get/paymenttransaction/:id",
//   paymenttransactionController.getRecordById
// );
// router.get(
//   "/get/paymenttransaction",
//   paymenttransactionController.getAllRecords
// );
// router.put(
//   "/update/paymenttransaction/:id",
//   paymenttransactionController.updateRecordById
// );
// router.delete(
//   "/delete/paymenttransaction/:id",
//   paymenttransactionController.deleteRecordById
// );

router.post('/save', paymenttransactionsController.savePayment);
router.get('/all', paymenttransactionsController.getAllPayments);

module.exports = router;

// const express = require("express");
// const router = express.Router();
// const verifyToken = require("../verifyToken");
// // Import controllers

// const { signin, signup } = require("../controllers/userController");
// const { login } = require("../controllers/loginController");

// const menuController = require("../controllers/menuController");
// const moneytransController = require("../controllers/moneytransController");
// const municplController = require("../controllers/municplController");
// const owcommissisonController = require("../controllers/owcommissisonController");
// const owrepodataController = require("../controllers/owrepodataController");
// const packageController = require("../controllers/packageController");
// const pgasController = require("../controllers/pgasController");
// const pocinfoController = require("../controllers/pocinfoController");
// const providerController = require("../controllers/providerController");
// const retailerController = require("../controllers/retailerController");
// const superdistributorController = require("../controllers/superdistributorController");
// const transhistController = require("../controllers/transhistController");
// const userkycController = require("../controllers/userkycController");
// const uwrechargeController = require("../controllers/uwrechargeController");
// const uwreportController = require("../controllers/uwreportController");
// const waterproviderController = require("../controllers/waterproviderController");
// const whitelistController = require("../controllers/whitelistController");

// const fundController = require("../controllers/fundController");
// const getbalanceController = require("../controllers/getbalanceController");
// // Define routes

// router.route("/signin").post(signin);
// router.route("/signup").post(signup);

// router.route("/login").post(login);

// router.post("/create/menus", verifyToken, menuController.createMenu);
// router.get("/get/menus/:id", verifyToken, menuController.getMenuById);
// router.get("/get/menus", verifyToken, menuController.getAllMenus);
// router.put("/update/menus/:id", verifyToken, menuController.updateMenuById);
// router.delete("/delete/menus/:id", verifyToken, menuController.deleteMenuById);

// router.post(
//   "/create/moneytrans",
//   verifyToken,
//   moneytransController.createTransaction
// );
// router.get(
//   "/get/moneytrans/:id",
//   verifyToken,
//   moneytransController.getTransactionById
// );
// router.get(
//   "/get/moneytrans",
//   verifyToken,
//   moneytransController.getAllTransactions
// );
// router.put(
//   "/update/moneytrans/:id",
//   verifyToken,
//   moneytransController.updateTransactionById
// );
// router.delete(
//   "/delete/moneytrans/:id",
//   verifyToken,
//   moneytransController.deleteTransactionById
// );

// router.post("/create/municpl", verifyToken, municplController.createRecord);
// router.get("/get/municpl/:id", verifyToken, municplController.getRecordById);
// router.get("/get/municpl", verifyToken, municplController.getAllRecords);
// router.put(
//   "/update/municpl/:id",
//   verifyToken,
//   municplController.updateRecordById
// );
// router.delete(
//   "/delete/municpl/:id",
//   verifyToken,
//   municplController.deleteRecordById
// );

// router.post(
//   "/create/owcommission",
//   verifyToken,
//   owcommissisonController.createOWRecord
// );
// router.get(
//   "/get/owcommission/:id",
//   verifyToken,
//   owcommissisonController.getRecordById
// );
// router.get(
//   "/get/owcommission",
//   verifyToken,
//   owcommissisonController.getAllRecords
// );
// router.put(
//   "/update/owcommission/:id",
//   verifyToken,
//   owcommissisonController.updateRecordById
// );
// router.delete(
//   "/delete/owcommission/:id",
//   verifyToken,
//   owcommissisonController.deleteRecordById
// );

// router.post(
//   "/create/owrepodata",
//   verifyToken,
//   owrepodataController.createRecord
// );
// router.get(
//   "/get/owrepodata/:id",
//   verifyToken,
//   owrepodataController.getRecordById
// );
// router.get("/get/owrepodata", verifyToken, owrepodataController.getAllRecords);
// router.put(
//   "/update/owrepodata/:id",
//   verifyToken,
//   owrepodataController.updateRecordById
// );
// router.delete(
//   "/delete/owrepodata/:id",
//   verifyToken,
//   owrepodataController.deleteRecordById
// );

// router.post("/create/package", verifyToken, packageController.createRecord);
// router.get("/get/package/:id", verifyToken, packageController.getRecordById);
// router.get("/get/package", verifyToken, packageController.getAllRecords);
// router.put(
//   "/update/package/:id",
//   verifyToken,
//   packageController.updateRecordById
// );
// router.delete(
//   "/delete/package/:id",
//   verifyToken,
//   packageController.deleteRecordById
// );

// router.post("/create/pgas", verifyToken, pgasController.createRecord);
// router.get("/get/pgas/:id", verifyToken, pgasController.getRecordById);
// router.get("/get/pgas", verifyToken, pgasController.getAllRecords);
// router.put("/update/pgas/:id", verifyToken, pgasController.updateRecordById);
// router.delete("/delete/pgas/:id", verifyToken, pgasController.deleteRecordById);

// router.post("/create/pocinfo", verifyToken, pocinfoController.createRecord);
// router.get("/get/pocinfo/:id", verifyToken, pocinfoController.getRecordById);
// router.get("/get/pocinfo", verifyToken, pocinfoController.getAllRecords);
// router.put(
//   "/update/pocinfo/:id",
//   verifyToken,
//   pocinfoController.updateRecordById
// );
// router.delete(
//   "/delete/pocinfo/:id",
//   verifyToken,
//   pocinfoController.deleteRecordById
// );

// router.post("/create/provider", verifyToken, providerController.createRecord);
// router.get("/get/provider/:id", verifyToken, providerController.getRecordById);
// router.get("/get/provider", verifyToken, providerController.getAllRecords);
// router.put(
//   "/update/provider/:id",
//   verifyToken,
//   providerController.updateRecordById
// );
// router.delete(
//   "/delete/provider/:id",
//   verifyToken,
//   providerController.deleteRecordById
// );

// router.post("/create/retailer", verifyToken, retailerController.createRecord);
// router.get("/get/retailer/:id", verifyToken, retailerController.getRecordById);
// router.get("/get/retailer", verifyToken, retailerController.getAllRecords);
// router.put(
//   "/update/retailer/:id",
//   verifyToken,
//   retailerController.updateRecordById
// );
// router.delete(
//   "/delete/retailer/:id",
//   verifyToken,
//   retailerController.deleteRecordById
// );

// router.post(
//   "/create/superdistributor",
//   verifyToken,
//   superdistributorController.createRecord
// );
// router.get(
//   "/get/superdistributor/:id",
//   verifyToken,
//   superdistributorController.getRecordById
// );
// router.get(
//   "/get/superdistributor",
//   verifyToken,
//   superdistributorController.getAllRecords
// );
// router.put(
//   "/update/superdistributor/:id",
//   verifyToken,
//   superdistributorController.updateRecordById
// );
// router.delete(
//   "/delete/superdistributor/:id",
//   verifyToken,
//   superdistributorController.deleteRecordById
// );

// router.post("/create/transhist", verifyToken, transhistController.createRecord);
// router.get(
//   "/get/transhist/:id",
//   verifyToken,
//   transhistController.getRecordById
// );
// router.get("/get/transhist", verifyToken, transhistController.getAllRecords);
// router.put(
//   "/update/transhist/:id",
//   verifyToken,
//   transhistController.updateRecordById
// );
// router.delete(
//   "/delete/transhist/:id",
//   verifyToken,
//   transhistController.deleteRecordById
// );

// router.post("/create/userkyc", verifyToken, userkycController.createRecord);
// router.get("/get/userkyc/:id", verifyToken, userkycController.getRecordById);
// router.get("/get/userkyc", verifyToken, userkycController.getAllRecords);
// router.put(
//   "/update/userkyc/:id",
//   verifyToken,
//   userkycController.updateRecordById
// );
// router.delete(
//   "/delete/userkyc/:id",
//   verifyToken,
//   userkycController.deleteRecordById
// );

// router.post(
//   "/create/uwrecharge",
//   verifyToken,
//   uwrechargeController.createRecord
// );
// router.get(
//   "/get/uwrecharge/:id",
//   verifyToken,
//   uwrechargeController.getRecordById
// );
// router.get("/get/uwrecharge", verifyToken, uwrechargeController.getAllRecords);
// router.put(
//   "/update/uwrecharge/:id",
//   verifyToken,
//   uwrechargeController.updateRecordById
// );
// router.delete(
//   "/delete/uwrecharge/:id",
//   verifyToken,
//   uwrechargeController.deleteRecordById
// );

// router.post("/create/uwreport", verifyToken, uwreportController.createRecord);
// router.get("/get/uwreport/:id", verifyToken, uwreportController.getRecordById);
// router.get("/get/uwreport", verifyToken, uwreportController.getAllRecords);
// router.put(
//   "/update/uwreport/:id",
//   verifyToken,
//   uwreportController.updateRecordById
// );
// router.delete(
//   "/delete/uwreport/:id",
//   verifyToken,
//   uwreportController.deleteRecordById
// );

// router.post(
//   "/create/waterprovider",
//   verifyToken,
//   waterproviderController.createRecord
// );
// router.get(
//   "/get/waterprovider/:id",
//   verifyToken,
//   waterproviderController.getRecordById
// );
// router.get(
//   "/get/waterprovider",
//   verifyToken,
//   waterproviderController.getAllRecords
// );
// router.put(
//   "/update/waterprovider/:id",
//   verifyToken,
//   waterproviderController.updateRecordById
// );
// router.delete(
//   "/delete/waterprovider/:id",
//   verifyToken,
//   waterproviderController.deleteRecordById
// );

// router.post("/create/whitelist", verifyToken, whitelistController.createRecord);
// router.get(
//   "/get/whitelist/:id",
//   verifyToken,
//   whitelistController.getRecordById
// );
// router.get("/get/whitelist", verifyToken, whitelistController.getAllRecords);
// router.put(
//   "/update/whitelist/:id",
//   verifyToken,
//   whitelistController.updateRecordById
// );
// router.delete(
//   "/delete/whitelist/:id",
//   verifyToken,
//   whitelistController.deleteRecordById
// );

// router.post("/transfer", verifyToken, fundController.transferFunds);

// router.get("/balances", verifyToken, getbalanceController.getAllBalances);
// router.get(
//   "/balances/:userId",
//   verifyToken,
//   getbalanceController.getUserBalance
// );

// module.exports = router;

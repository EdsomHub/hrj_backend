//routes/protectedRoutes.js

const express = require("express");
const router = express.Router();
const verifyToken = require("../middleware/auth");
const pool = require("../db");

const {
  getUserBalance,
  getUsersUnderUser,
  createTransaction,
  getUserTypeFromUserId,
  getAllTransactions,
  getUserTransactions,
  getUsersUnderSignedInUser,
  getUserById,
  checkIfReceiverUnderSender,
  deleteUserById,
  calculateSurcharge,
} = require("../models/dbOperations");

// GET RESPONSE ON ACCESSING PROTECTED ROUTES
router.get("/", verifyToken, (req, res) => {
  // This route is protected and accessed with a valid token
  res.json({
    message: "Protected route accessed successfully",
    userId: req.userId,
  });
});

// GET SIGNED IN USER'S BALANCE
router.get("/balance", verifyToken, async (req, res) => {
  try {
    const userId = req.userId;
    const balance = await getUserBalance(userId); // Get the user's balance
    res.json({
      message: "Protected route accessed successfully",
      userId,
      balance,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

// GET USERS UNDER THE SIGNED IN USER BY USING USERTYPE
router.get("/underme", async (req, res) => {
  try {
    //const userId = req.userId;
    //const { utype } = "Channel_Partner";
    const user = await getUsersUnderUser(userId, utype);
    res.json({
      message: "Protected route accessed successfully",
     // userId,
      //user,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

// TRANSFER MONEY WALLET TO WALLET
// router.post("/transfer", verifyToken, async (req, res) => {
//   try {
//     const { receiverId, receiverName, receiverType, amount, reason } = req.body;
//     // Sender's name and type can be retrieved from req.userId if needed
//     const senderName = "Sender Name"; // Example
//     const senderType = "Sender Type"; // Example
//     // Call the createTransaction function with the provided details
//     const transactionId = await createTransaction(
//       req,
//       senderName,
//       senderType,
//       receiverId,
//       receiverName,
//       receiverType,
//       amount,
//       reason
//     );
//     res
//       .status(201)
//       .json({ message: "Transaction created successfully", transactionId });
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({ message: "Internal server error" });
//   }
// });
// TRANSFER MONEY WALLET TO WALLET
router.post("/transfer", verifyToken, async (req, res) => {
  try {
    const { receiverId, receiverName, receiverType, amount, reason } = req.body;
    const senderUserId = req.userId; // Get sender's user ID from the token
    // console.log(senderUserId); // console
    // Check if the receiver is under the sender
    const isReceiverUnderSender = await checkIfReceiverUnderSender(
      senderUserId,
      receiverId
    );
    // console.log(isReceiverUnderSender); // console
    if (!isReceiverUnderSender) {
      return res
        .status(403)
        .json({ message: "Receiver is not under the sender" });
    }
    // Sender's name and type can be retrieved from req.userId if needed
    const senderName = "Sender Name"; // Example
    const senderType = "Sender Type"; // Example
    // Call the createTransaction function with the provided details
    const transactionId = await createTransaction(
      req,
      senderName,
      senderType,
      receiverId,
      receiverName,
      receiverType,
      amount,
      reason
    );
    res
      .status(201)
      .json({ message: "Transaction created successfully", transactionId });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

// GET ALL TRANSACTIONS FROM WHOLE DATABASE FOR ADMIN
router.get("/adminalltransactions", getAllTransactions);

// GET ALL TRANSACTIONS FOR SIGNED IN USER ONLY
//router.get("/my-transactions", getUserTransactions);
///////



////////
// API endpoint to get users under the signed-in user
router.get("/users-under-me", verifyToken, getUsersUnderSignedInUser);

// GET RECEIVER'S DETAILS FROM ITS USER ID
router.get("/userrr/:rid", verifyToken, async (req, res) => {
  try {
    const { rid } = req.params;
    const user = await getUserById(rid);
    res.json({ message: "Protected route accessed successfully", user });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

// DELETE USER BY ID
router.delete("/delete/:userId", verifyToken, async (req, res) => {
  try {
    const { userId } = req.params;
    const result = await deleteUserById(userId);
    res.json({ message: result });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

// SURCHARGED AMOUNT
// router.post('/calculate-surcharge', verifyToken, async (req, res) => {
router.post("/calculate-surcharge", async (req, res) => {
  try {
    const { amount } = req.body;
    // Calculate the surcharge
    const finalAmount = await calculateSurcharge(amount);
    const deepLink = `rockkpay://pay?amount=${finalAmount}`;
    // console.log(deepLink);
    res.redirect(302, deepLink);
    // res.json(finalAmount);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});


/// Transaction History
router.post('/transaction-history', async (req, res) => {
  const { mobileNumber, name } = req.body; // Get data from the request body
  
  if (!mobileNumber || !name) {
    return res.status(400).json({ message: 'Mobile number and name are required' });
  }
  
  try {
    // Query to retrieve transaction history based on mobile number and name
    const [rows] = await pool.query(
      'SELECT txnid AS transaction_id, amount, mode AS payment_mode, status, addedon AS transaction_date FROM payment_transactions WHERE phone = ? AND firstname = ? ORDER BY addedon DESC',
      [mobileNumber, name]
    );
    
    console.log('Transaction history query result:', rows); // Debugging

    if (rows.length === 0) {
      // No transactions found
      return res.status(404).json({ message: 'No transactions found for this user' });
    }

    // Return the transactions as a JSON response
    return res.status(200).json({ transactions: rows });
  } catch (error) {
    console.error('Error fetching transaction history:', error);
    return res.status(500).json({ message: 'Internal server error' });
  }
});

module.exports = router;

const pool = require("../db");
// Controller function to retrieve balance of the authenticated user
const getbalanceController = {
  getUserBalance: (req, res) => {
    // Extract user ID from the authenticated request
    const userId = req.user._id;
    // Query to fetch balance of the authenticated user
    const getUserBalanceQuery = `SELECT username, userType, vmbalance, vwbalance FROM user_table WHERE id = ?`;
    pool.query(getUserBalanceQuery, [userId], (err, results) => {
      if (err) {
        console.error("Error fetching user balance:", err);
        return res.status(500).json({ error: "Internal server error" });
      }
      // Check if user exists
      if (results.length === 0) {
        return res.status(404).json({ error: "User not found" });
      }
      // Return the balance of the user
      res.json({
        userId: userId,
        username: results[0].username,
        userType: results[0].userType,
        vmbalance: results[0].vmbalance,
        vwbalance: results[0].vwbalance,
      });
    });
  },
};
module.exports = getbalanceController;

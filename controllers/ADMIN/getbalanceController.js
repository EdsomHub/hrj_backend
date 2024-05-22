const pool = require('../../db');

// Controller function to retrieve balances of all users
const getbalanceController = {

getAllBalances: (req, res) => {
    // Query to fetch balances of all users
    const getBalancesQuery = `SELECT id, balance FROM fundusers`;

    pool.query(getBalancesQuery, (err, results) => {
        if (err) {
            console.error('Error fetching balances:', err);
            return res.status(500).json({ error: 'Internal server error' });
        }

        // Map the results to send as response
        const balances = results.map(user => ({ id: user.id, balance: user.balance }));
        res.json(balances);
    });
},

// Controller function to retrieve balance of a specific user
getUserBalance: (req, res) => {
    const userId = req.params.userId;

    // Query to fetch balance of the specified user
    const getUserBalanceQuery = `SELECT balance FROM fundusers WHERE id = ?`;

    pool.query(getUserBalanceQuery, [userId], (err, results) => {
        if (err) {
            console.error('Error fetching user balance:', err);
            return res.status(500).json({ error: 'Internal server error' });
        }

        // Check if user exists
        if (results.length === 0) {
            return res.status(404).json({ error: 'User not found' });
        }

        // Return the balance of the user
        res.json({ userId: userId, balance: results[0].balance });
    });
}
};

module.exports = getbalanceController;
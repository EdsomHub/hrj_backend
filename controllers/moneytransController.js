const Moneytrans = require('../models/moneytrans');

const moneytransController = {
  createTransaction: (req, res) => {
    const transactionData = req.body;
    Moneytrans.createTransaction(transactionData, (err, transactionId) => {
      if (err) {
        console.error('Error creating transaction:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      res.status(201).json({ transactionId });
    });
  },

  getTransactionById: (req, res) => {
    const { id } = req.params;
    Moneytrans.getTransactionById(id, (err, transaction) => {
      if (err) {
        console.error('Error fetching transaction:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!transaction) {
        return res.status(404).json({ error: 'Transaction not found' });
      }
      res.json(transaction);
    });
  },

  getAllTransactions: (req, res) => {
    Moneytrans.getAllTransactions((err, transactions) => {
      if (err) {
        console.error('Error fetching transactions:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      res.json(transactions);
    });
  },

  updateTransactionById: (req, res) => {
    const { id } = req.params;
    const newData = req.body;
    Moneytrans.updateTransactionById(id, newData, (err, success) => {
      if (err) {
        console.error('Error updating transaction:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Transaction not found' });
      }
      res.json({ message: 'Transaction updated successfully' });
    });
  },

  deleteTransactionById: (req, res) => {
    const { id } = req.params;
    Moneytrans.deleteTransactionById(id, (err, success) => {
      if (err) {
        console.error('Error deleting transaction:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Transaction not found' });
      }
      res.json({ message: 'Transaction deleted successfully' });
    });
  }
};

module.exports = moneytransController;

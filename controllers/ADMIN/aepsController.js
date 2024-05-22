const Aeps = require("../../models/aeps");

// Function to fetch all AEPS transactions
exports.getAllTransactions = (req, res) => {
  Aeps.getAll((error, transactions) => {
    if (error) {
      console.error("Error fetching transactions:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.json(transactions);
  });
};

// Function to fetch a single AEPS transaction by ID
exports.getTransactionById = (req, res) => {
  const id = req.params.id;
  Aeps.getById(id, (error, transaction) => {
    if (error) {
      console.error("Error fetching transaction:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!transaction) {
      return res.status(404).json({ error: "Transaction not found" });
    }
    res.json(transaction);
  });
};

// Function to create a new AEPS transaction
exports.createTransaction = (req, res) => {
  const { TransactionID, UserID, TransactionType, Amount, TransactionDate, Status } = req.body;
  Aeps.create(TransactionID, UserID, TransactionType, Amount, TransactionDate, Status, (error, id) => {
    if (error) {
      console.error("Error creating transaction:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.status(201).json({ message: "Transaction created successfully", id });
  });
};

// Function to update an existing AEPS transaction
exports.updateTransaction = (req, res) => {
  const id = req.params.id;
  const { TransactionID, UserID, TransactionType, Amount, TransactionDate, Status } = req.body;
  Aeps.update(id, TransactionID, UserID, TransactionType, Amount, TransactionDate, Status, (error, success) => {
    if (error) {
      console.error("Error updating transaction:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Transaction not found" });
    }
    res.json({ message: "Transaction updated successfully" });
  });
};

// Function to delete an AEPS transaction
exports.deleteTransaction = (req, res) => {
  const id = req.params.id;
  Aeps.delete(id, (error, success) => {
    if (error) {
      console.error("Error deleting transaction:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Transaction not found" });
    }
    res.json({ message: "Transaction deleted successfully" });
  });
};

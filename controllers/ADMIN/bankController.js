const Bank = require("../../models/bank");
const moment = require("moment");

// Function to fetch all banks
exports.getAllBanks = (req, res) => {
  Bank.getAll((error, banks) => {
    if (error) {
      console.error("Error fetching banks:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.json(banks);
  });
};

// Function to fetch a single bank by ID
exports.getBankById = (req, res) => {
  const id = req.params.id;
  Bank.getById(id, (error, bank) => {
    if (error) {
      console.error("Error fetching bank:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!bank) {
      return res.status(404).json({ error: "Bank not found" });
    }
    res.json(bank);
  });
};

// Function to create a new bank
exports.createBank = (req, res) => {
  const { BankName, AccountName, AccountNumber, IFSC, BranchName, IsDMR, IsMain, IsVisible } = req.body;
  const Timestamp = moment().format("YYYY-MM-DD HH:mm:ss"); // Current timestamp
  Bank.create(BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible, (error, id) => {
    if (error) {
      console.error("Error creating bank:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.status(201).json({ message: "Bank created successfully", id });
  });
};

// Function to update an existing bank
exports.updateBank = (req, res) => {
  const id = req.params.id;
  const { BankName, AccountName, AccountNumber, IFSC, BranchName, IsDMR, IsMain, IsVisible } = req.body;
  const Timestamp = moment().format("YYYY-MM-DD HH:mm:ss"); // Current timestamp
  Bank.update(id, BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible, (error, success) => {
    if (error) {
      console.error("Error updating bank:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Bank not found" });
    }
    res.json({ message: "Bank updated successfully" });
  });
};

// Function to delete a bank
exports.deleteBank = (req, res) => {
  const id = req.params.id;
  Bank.delete(id, (error, success) => {
    if (error) {
      console.error("Error deleting bank:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Bank not found" });
    }
    res.json({ message: "Bank deleted successfully" });
  });
};

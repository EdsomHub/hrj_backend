const Logs = require("../models/logs");

// Controller function to get all logs
exports.getAllLogs = (req, res) => {
  Logs.getAll((error, logs) => {
    if (error) {
      console.error("Error fetching logs:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.json({ logs });
  });
};

// Controller function to get a log by ID
exports.getLogById = (req, res) => {
  const id = req.params.id;
  Logs.getById(id, (error, log) => {
    if (error) {
      console.error("Error fetching log by ID:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!log) {
      return res.status(404).json({ error: "Log not found" });
    }
    res.json({ log });
  });
};

// Controller function to create a new log
exports.createLog = (req, res) => {
  const { Date, Thread, Level, Logger, Message, Exception } = req.body;
  Logs.create(Date, Thread, Level, Logger, Message, Exception, (error, logId) => {
    if (error) {
      console.error("Error creating log:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.status(201).json({ message: "Log created successfully", logId });
  });
};

// Controller function to update a log by ID
exports.updateLog = (req, res) => {
  const id = req.params.id;
  const { Date, Thread, Level, Logger, Message, Exception } = req.body;
  Logs.update(id, Date, Thread, Level, Logger, Message, Exception, (error, updated) => {
    if (error) {
      console.error("Error updating log:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!updated) {
      return res.status(404).json({ error: "Log not found" });
    }
    res.json({ message: "Log updated successfully" });
  });
};

// Controller function to delete a log by ID
exports.deleteLog = (req, res) => {
  const id = req.params.id;
  Logs.delete(id, (error, deleted) => {
    if (error) {
      console.error("Error deleting log:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!deleted) {
      return res.status(404).json({ error: "Log not found" });
    }
    res.json({ message: "Log deleted successfully" });
  });
};

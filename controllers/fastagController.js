const Fastag = require("../models/fastag");

exports.getAllFastags = (req, res) => {
  Fastag.getAll((error, fastags) => {
    if (error) {
      console.error("Error fetching fastags:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.json({ fastags });
  });
};

exports.getFastagById = (req, res) => {
  const { id } = req.params;
  Fastag.getById(id, (error, fastag) => {
    if (error) {
      console.error("Error fetching fastag by ID:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!fastag) {
      return res.status(404).json({ error: "Fastag not found" });
    }
    res.json({ fastag });
  });
};

exports.createFastag = (req, res) => {
  const { FLD_1, Provider } = req.body;
  Fastag.create(FLD_1, Provider, (error, id) => {
    if (error) {
      console.error("Error creating fastag:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.status(201).json({ message: "Fastag created successfully", id });
  });
};

exports.updateFastag = (req, res) => {
  const { id } = req.params;
  const { FLD_1, Provider } = req.body;
  Fastag.update(id, FLD_1, Provider, (error, success) => {
    if (error) {
      console.error("Error updating fastag:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Fastag not found" });
    }
    res.json({ message: "Fastag updated successfully" });
  });
};

exports.deleteFastag = (req, res) => {
  const { id } = req.params;
  Fastag.delete(id, (error, success) => {
    if (error) {
      console.error("Error deleting fastag:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Fastag not found" });
    }
    res.json({ message: "Fastag deleted successfully" });
  });
};

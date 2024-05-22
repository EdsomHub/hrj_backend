const Distributor = require("../models/distributor");

exports.getAllDistributors = (req, res) => {
  Distributor.getAll((error, distributors) => {
    if (error) {
      console.error("Error fetching distributors:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.json(distributors);
  });
};

exports.getDistributorById = (req, res) => {
  const id = req.params.id;
  Distributor.getById(id, (error, distributor) => {
    if (error) {
      console.error("Error fetching distributor by ID:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!distributor) {
      return res.status(404).json({ error: "Distributor not found" });
    }
    res.json(distributor);
  });
};

exports.createDistributor = (req, res) => {
  const distributorData = req.body;
  Distributor.create(distributorData, (error, id) => {
    if (error) {
      console.error("Error creating distributor:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.status(201).json({ message: "Distributor created successfully", id });
  });
};

exports.updateDistributor = (req, res) => {
  const id = req.params.id;
  const distributorData = req.body;
  Distributor.update(id, distributorData, (error, success) => {
    if (error) {
      console.error("Error updating distributor:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Distributor not found" });
    }
    res.json({ message: "Distributor updated successfully" });
  });
};

exports.deleteDistributor = (req, res) => {
  const id = req.params.id;
  Distributor.delete(id, (error, success) => {
    if (error) {
      console.error("Error deleting distributor:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Distributor not found" });
    }
    res.status(204).send(); // No content, as the resource is deleted
  });
};

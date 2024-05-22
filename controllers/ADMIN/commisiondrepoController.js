const Cdrepo = require("../../models/commisiondrepo");

// Controller function to get all commission distributions
exports.getAllCommisionDistributions = (req, res) => {
  Cdrepo.getAll((err, commisionDistributions) => {
    if (err) {
      console.error("Error fetching commission distributions:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      res.json(commisionDistributions);
    }
  });
};

// Controller function to get a commission distribution by ID
exports.getCommisionDistributionById = (req, res) => {
  const id = req.params.id;
  Cdrepo.getById(id, (err, commisionDistribution) => {
    if (err) {
      console.error("Error fetching commission distribution:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      if (commisionDistribution) {
        res.json(commisionDistribution);
      } else {
        res.status(404).json({ error: "Commission distribution not found" });
      }
    }
  });
};

// Controller function to create a new commission distribution
exports.createCommisionDistribution = (req, res) => {
  const data = req.body;
  Cdrepo.create(data, (err, insertId) => {
    if (err) {
      console.error("Error creating commission distribution:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      res.status(201).json({ message: "Commission distribution created successfully", id: insertId });
    }
  });
};

// Controller function to update a commission distribution by ID
exports.updateCommisionDistribution = (req, res) => {
  const id = req.params.id;
  const data = req.body;
  Cdrepo.update(id, data, (err, success) => {
    if (err) {
      console.error("Error updating commission distribution:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      if (success) {
        res.json({ message: "Commission distribution updated successfully" });
      } else {
        res.status(404).json({ error: "Commission distribution not found" });
      }
    }
  });
};

// Controller function to delete a commission distribution by ID
exports.deleteCommisionDistribution = (req, res) => {
  const id = req.params.id;
  Cdrepo.delete(id, (err, success) => {
    if (err) {
      console.error("Error deleting commission distribution:", err);
      res.status(500).json({ error: "Internal Server Error" });
    } else {
      if (success) {
        res.status(204).send(); // No content, as the resource is deleted
      } else {
        res.status(404).json({ error: "Commission distribution not found" });
      }
    }
  });
};

const Bband = require("../../models/bband");

// Function to fetch all broadband providers
exports.getAllBbandProviders = (req, res) => {
  Bband.getAll((error, bbandProviders) => {
    if (error) {
      console.error("Error fetching broadband providers:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.json(bbandProviders);
  });
};

// Function to fetch a single broadband provider by ID
exports.getBbandProviderById = (req, res) => {
  const id = req.params.id;
  Bband.getById(id, (error, bbandProvider) => {
    if (error) {
      console.error("Error fetching broadband provider:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!bbandProvider) {
      return res.status(404).json({ error: "Broadband provider not found" });
    }
    res.json(bbandProvider);
  });
};

// Function to create a new broadband provider
exports.createBbandProvider = (req, res) => {
  const { BRAODBAND_PROVIDERS, field } = req.body;
  Bband.create(BRAODBAND_PROVIDERS, field, (error, id) => {
    if (error) {
      console.error("Error creating broadband provider:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    res.status(201).json({ message: "Broadband provider created successfully", id });
  });
};

// Function to update an existing broadband provider
exports.updateBbandProvider = (req, res) => {
  const id = req.params.id;
  const { BRAODBAND_PROVIDERS, field } = req.body;
  Bband.update(id, BRAODBAND_PROVIDERS, field, (error, success) => {
    if (error) {
      console.error("Error updating broadband provider:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Broadband provider not found" });
    }
    res.json({ message: "Broadband provider updated successfully" });
  });
};

// Function to delete a broadband provider
exports.deleteBbandProvider = (req, res) => {
  const id = req.params.id;
  Bband.delete(id, (error, success) => {
    if (error) {
      console.error("Error deleting broadband provider:", error);
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Broadband provider not found" });
    }
    res.json({ message: "Broadband provider deleted successfully" });
  });
};

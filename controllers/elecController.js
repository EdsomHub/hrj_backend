const Elec = require("../models/elec");

exports.getAll = (req, res) => {
  Elec.getAll((error, elecs) => {
    if (error) {
      console.error("Error fetching elec data:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.json({ elecs });
  });
};

exports.getById = (req, res) => {
  const Biller = req.params.Biller;
  Elec.getById(Biller, (error, elec) => {
    if (error) {
      console.error("Error fetching elec data:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!elec) {
      return res.status(404).json({ error: "Elec not found" });
    }
    res.json({ elec });
  });
};

exports.create = (req, res) => {
  const { Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3 } = req.body;
  Elec.create(Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3, (error, elecId) => {
    if (error) {
      console.error("Error creating elec:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.status(201).json({ message: "Elec created successfully", elecId });
  });
};

exports.update = (req, res) => {
  const Biller = req.params.Biller;
  const { FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3 } = req.body;
  Elec.update(Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3, (error, updated) => {
    if (error) {
      console.error("Error updating elec:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!updated) {
      return res.status(404).json({ error: "Elec not found" });
    }
    res.json({ message: "Elec updated successfully" });
  });
};

exports.delete = (req, res) => {
  const Biller = req.params.Biller;
  Elec.delete(Biller, (error, deleted) => {
    if (error) {
      console.error("Error deleting elec:", error);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!deleted) {
      return res.status(404).json({ error: "Elec not found" });
    }
    res.json({ message: "Elec deleted successfully" });
  });
};

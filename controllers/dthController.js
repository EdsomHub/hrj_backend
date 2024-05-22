const Dth = require("../models/dth");

// Controller method to get all DTH data
exports.getAllDth = (req, res) => {
  Dth.getAll((error, dthData) => {
    if (error) {
      console.error('Error fetching DTH data:', error);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    res.json(dthData);
  });
};

// Controller method to create new DTH data
exports.createDth = (req, res) => {
  const { FLD_1, FLD_2, Provider } = req.body;
  Dth.create(FLD_1, FLD_2, Provider, (error, newDthId) => {
    if (error) {
      console.error('Error creating DTH data:', error);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    res.status(201).json({ message: 'DTH data created successfully', id: newDthId });
  });
};

// Controller method to update DTH data
exports.updateDth = (req, res) => {
  const { id } = req.params;
  const { FLD_1, FLD_2, Provider } = req.body;
  Dth.update(id, FLD_1, FLD_2, Provider, (error, updated) => {
    if (error) {
      console.error('Error updating DTH data:', error);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    if (!updated) {
      return res.status(404).json({ error: 'DTH data not found' });
    }
    res.json({ message: 'DTH data updated successfully' });
  });
};

// Controller method to delete DTH data
exports.deleteDth = (req, res) => {
  const { id } = req.params;
  Dth.delete(id, (error, deleted) => {
    if (error) {
      console.error('Error deleting DTH data:', error);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    if (!deleted) {
      return res.status(404).json({ error: 'DTH data not found' });
    }
    res.status(204).send(); // No content, as the resource is deleted
  });
};

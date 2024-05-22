const MasterDistributor = require('../../models/masterdistributor');

// Controller function to get all master distributors
exports.getAllMasterDistributors = (req, res) => {
  MasterDistributor.getAll((error, distributors) => {
    if (error) {
      console.error('Error fetching master distributors:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    res.json({ distributors });
  });
};

// Controller function to get a master distributor by ID
exports.getMasterDistributorById = (req, res) => {
  const id = req.params.id;
  MasterDistributor.getById(id, (error, distributor) => {
    if (error) {
      console.error('Error fetching master distributor by ID:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    if (!distributor) {
      return res.status(404).json({ error: 'Master distributor not found' });
    }
    res.json({ distributor });
  });
};

// Controller function to create a new master distributor
exports.createMasterDistributor = (req, res) => {
  const distributorData = req.body;
  MasterDistributor.create(distributorData, (error, insertedId) => {
    if (error) {
      console.error('Error creating master distributor:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    res.status(201).json({ message: 'Master distributor created successfully', id: insertedId });
  });
};

// Controller function to update a master distributor by ID
exports.updateMasterDistributor = (req, res) => {
  const id = req.params.id;
  const distributorData = req.body;
  MasterDistributor.update(id, distributorData, (error, success) => {
    if (error) {
      console.error('Error updating master distributor:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    if (!success) {
      return res.status(404).json({ error: 'Master distributor not found' });
    }
    res.json({ message: 'Master distributor updated successfully' });
  });
};

// Controller function to delete a master distributor by ID
exports.deleteMasterDistributor = (req, res) => {
  const id = req.params.id;
  MasterDistributor.delete(id, (error, success) => {
    if (error) {
      console.error('Error deleting master distributor:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    if (!success) {
      return res.status(404).json({ error: 'Master distributor not found' });
    }
    res.json({ message: 'Master distributor deleted successfully' });
  });
};

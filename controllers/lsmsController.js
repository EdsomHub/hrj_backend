const Lsms = require('../models/lsms');

// Controller for handling LSMS related operations

// Get all LSMS entries
exports.getAllLsms = (req, res) => {
  Lsms.getAll((error, lsms) => {
    if (error) {
      console.error('Error fetching LSMS entries:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    res.json(lsms);
  });
};

// Get LSMS entry by ID
exports.getLsmsById = (req, res) => {
  const lsmsId = req.params.id;
  Lsms.getById(lsmsId, (error, lsms) => {
    if (error) {
      console.error(`Error fetching LSMS entry with ID ${lsmsId}:`, error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    if (!lsms) {
      return res.status(404).json({ error: 'LSMS entry not found' });
    }
    res.json(lsms);
  });
};

// Create a new LSMS entry
exports.createLsms = (req, res) => {
  const { Date, SenderNumber, RecipientNumber, Message, Status } = req.body;
  Lsms.create(Date, SenderNumber, RecipientNumber, Message, Status, (error, lsmsId) => {
    if (error) {
      console.error('Error creating LSMS entry:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    res.status(201).json({ message: 'LSMS entry created successfully', lsmsId });
  });
};

// Update an existing LSMS entry
exports.updateLsms = (req, res) => {
  const lsmsId = req.params.id;
  const { Date, SenderNumber, RecipientNumber, Message, Status } = req.body;
  Lsms.update(lsmsId, Date, SenderNumber, RecipientNumber, Message, Status, (error, updated) => {
    if (error) {
      console.error(`Error updating LSMS entry with ID ${lsmsId}:`, error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    if (!updated) {
      return res.status(404).json({ error: 'LSMS entry not found' });
    }
    res.json({ message: 'LSMS entry updated successfully' });
  });
};

// Delete an existing LSMS entry
exports.deleteLsms = (req, res) => {
  const lsmsId = req.params.id;
  Lsms.delete(lsmsId, (error, deleted) => {
    if (error) {
      console.error(`Error deleting LSMS entry with ID ${lsmsId}:`, error);
      return res.status(500).json({ error: 'Internal server error' });
    }
    if (!deleted) {
      return res.status(404).json({ error: 'LSMS entry not found' });
    }
    res.json({ message: 'LSMS entry deleted successfully' });
  });
};

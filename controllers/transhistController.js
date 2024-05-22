const TransHist = require('../models/transhist');

const TransHistController = {
  // Create a new record
  createRecord: (req, res) => {
    const recordData = req.body;

    TransHist.createRecord(recordData, (err, result) => {
      if (err) {
        console.error('Error creating record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      return res.status(200).json({ message: 'Record created successfully', id: result });
    });
  },

  // Get a record by ID
  getRecordById: (req, res) => {
    const recordId = req.params.id;

    TransHist.getRecordById(recordId, (err, record) => {
      if (err) {
        console.error('Error retrieving record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!record) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ record });
    });
  },

  // Get all records
  getAllRecords: (req, res) => {
    TransHist.getAllRecords((err, records) => {
      if (err) {
        console.error('Error retrieving records:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      return res.status(200).json({ records });
    });
  },

  // Update a record by ID
  updateRecordById: (req, res) => {
    const recordId = req.params.id;
    const newData = req.body;

    TransHist.updateRecordById(recordId, newData, (err, success) => {
      if (err) {
        console.error('Error updating record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ message: 'Record updated successfully' });
    });
  },

  // Delete a record by ID
  deleteRecordById: (req, res) => {
    const recordId = req.params.id;

    TransHist.deleteRecordById(recordId, (err, success) => {
      if (err) {
        console.error('Error deleting record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ message: 'Record deleted successfully' });
    });
  }
};

module.exports = TransHistController;

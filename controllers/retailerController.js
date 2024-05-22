const Retailer = require('../models/retailer');

const retailerController = {
  createRecord: (req, res) => {
    const recordData = req.body;
    Retailer.createRecord(recordData, (err, recordId) => {
      if (err) {
        console.error('Error creating record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      res.status(201).json({ recordId });
    });
  },

  getRecordById: (req, res) => {
    const { id } = req.params;
    Retailer.getRecordById(id, (err, record) => {
      if (err) {
        console.error('Error fetching record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!record) {
        return res.status(404).json({ error: 'Record not found' });
      }
      res.json(record);
    });
  },

  getAllRecords: (req, res) => {
    Retailer.getAllRecords((err, records) => {
      if (err) {
        console.error('Error fetching records:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      res.json(records);
    });
  },

  updateRecordById: (req, res) => {
    const { id } = req.params;
    const newData = req.body;
    Retailer.updateRecordById(id, newData, (err, success) => {
      if (err) {
        console.error('Error updating record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Record not found' });
      }
      res.json({ message: 'Record updated successfully' });
    });
  },

  deleteRecordById: (req, res) => {
    const { id } = req.params;
    Retailer.deleteRecordById(id, (err, success) => {
      if (err) {
        console.error('Error deleting record:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Record not found' });
      }
      res.json({ message: 'Record deleted successfully' });
    });
  }
};

module.exports = retailerController;

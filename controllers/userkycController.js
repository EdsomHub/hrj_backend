const UserKYC = require('../models/userkyc');

const userKYCController = {
  createRecord: (req, res) => {
    const recordData = req.body;
    UserKYC.createRecord(recordData, (err, recordId) => {
      if (err) {
        return res.status(500).json({ error: 'Internal server error' });
      }
      return res.status(201).json({ recordId });
    });
  },

  getRecordById: (req, res) => {
    const recordId = req.params.id;
    UserKYC.getRecordById(recordId, (err, record) => {
      if (err) {
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!record) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ record });
    });
  },

  getAllRecords: (req, res) => {
    UserKYC.getAllRecords((err, records) => {
      if (err) {
        return res.status(500).json({ error: 'Internal server error' });
      }
      return res.status(200).json({ records });
    });
  },

  updateRecordById: (req, res) => {
    const recordId = req.params.id;
    const newData = req.body;
    UserKYC.updateRecordById(recordId, newData, (err, updated) => {
      if (err) {
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!updated) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ message: 'Record updated successfully' });
    });
  },

  deleteRecordById: (req, res) => {
    const recordId = req.params.id;
    UserKYC.deleteRecordById(recordId, (err, deleted) => {
      if (err) {
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!deleted) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ message: 'Record deleted successfully' });
    });
  }
};

module.exports = userKYCController;

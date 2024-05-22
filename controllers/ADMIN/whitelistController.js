const Whitelist = require('../../models/whitelist');

const whitelistController = {
  createRecord: (req, res) => {
    const recordData = req.body;
    Whitelist.createRecord(recordData, (err, result) => {
      if (err) {
        return res.status(500).json({ error: 'Error creating record' });
      }
      return res.status(200).json({ message: 'Record created successfully', id: result });
    });
  },

  getRecordById: (req, res) => {
    const recordId = req.params.id;
    Whitelist.getRecordById(recordId, (err, record) => {
      if (err) {
        return res.status(500).json({ error: 'Error fetching record' });
      }
      if (!record) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json(record);
    });
  },

  getAllRecords: (req, res) => {
    Whitelist.getAllRecords((err, records) => {
      if (err) {
        return res.status(500).json({ error: 'Error fetching records' });
      }
      return res.status(200).json(records);
    });
  },

  updateRecordById: (req, res) => {
    const recordId = req.params.id;
    const newData = req.body;
    Whitelist.updateRecordById(recordId, newData, (err, success) => {
      if (err) {
        return res.status(500).json({ error: 'Error updating record' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ message: 'Record updated successfully' });
    });
  },

  deleteRecordById: (req, res) => {
    const recordId = req.params.id;
    Whitelist.deleteRecordById(recordId, (err, success) => {
      if (err) {
        return res.status(500).json({ error: 'Error deleting record' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Record not found' });
      }
      return res.status(200).json({ message: 'Record deleted successfully' });
    });
  }
};

module.exports = whitelistController;

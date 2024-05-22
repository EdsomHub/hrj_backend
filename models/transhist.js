const pool = require('../db');

const TransHist = {
  createRecord: (recordData, callback) => {
    const {
      SNo,
      Date,
      MobileNumber,
      UserID,
      Tranid,
      Reqid,
      Status,
      Provider,
      API,
      Source,
      Action,
      SendToAPI,
      AmountS,
      AmountF,
      AmountP,
      AmountR
    } = recordData;

    const sql = `
      INSERT INTO Trans_Hist (
        SNo,
        Date,
        MobileNumber,
        UserID,
        Tranid,
        Reqid,
        Status,
        Provider,
        API,
        Source,
        Action,
        SendToAPI,
        AmountS,
        AmountF,
        AmountP,
        AmountR
      )
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    const values = [
      SNo,
      Date,
      MobileNumber,
      UserID,
      Tranid,
      Reqid,
      Status,
      Provider,
      API,
      Source,
      Action,
      SendToAPI,
      AmountS,
      AmountF,
      AmountP,
      AmountR
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM Trans_Hist WHERE id = ?`;
    const values = [recordId];
    
    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      if (result.length === 0) {
        return callback(null, null); // Record not found
      }
      return callback(null, result[0]);
    });
  },

  getAllRecords: (callback) => {
    const sql = `SELECT * FROM Trans_Hist`;
    
    pool.query(sql, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const {
      SNo,
      Date,
      MobileNumber,
      UserID,
      Tranid,
      Reqid,
      Status,
      Provider,
      API,
      Source,
      Action,
      SendToAPI,
      AmountS,
      AmountF,
      AmountP,
      AmountR
    } = newData;

    const sql = `
      UPDATE Trans_Hist
      SET
        SNo = ?,
        Date = ?,
        MobileNumber = ?,
        UserID = ?,
        Tranid = ?,
        Reqid = ?,
        Status = ?,
        Provider = ?,
        API = ?,
        Source = ?,
        Action = ?,
        SendToAPI = ?,
        AmountS = ?,
        AmountF = ?,
        AmountP = ?,
        AmountR = ?
      WHERE id = ?
    `;

    const values = [
      SNo,
      Date,
      MobileNumber,
      UserID,
      Tranid,
      Reqid,
      Status,
      Provider,
      API,
      Source,
      Action,
      SendToAPI,
      AmountS,
      AmountF,
      AmountP,
      AmountR,
      recordId
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      if (result.affectedRows === 0) {
        return callback(null, false); // Record not found
      }
      return callback(null, true); // Updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM Trans_Hist WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      if (result.affectedRows === 0) {
        return callback(null, false); // Record not found
      }
      return callback(null, true); // Deleted successfully
    });
  }
};

module.exports = TransHist;

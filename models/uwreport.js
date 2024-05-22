const pool = require('../db');

const Uwreport = {
  createRecord: (recordData, callback) => {
    const { UserID, Date, MobileNumber, Provider, Status } = recordData;

    const sql = `
      INSERT INTO User_wise_Report (
        UserID,
        Date,
        MobileNumber,
        Provider,
        Status
      ) VALUES (?, ?, ?, ?, ?)
    `;

    const values = [UserID, Date, MobileNumber, Provider, Status];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM User_wise_Report WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, rows) => {
      if (err) {
        return callback(err);
      }
      if (rows.length === 0) {
        return callback(null, null); // Record not found
      }
      return callback(null, rows[0]);
    });
  },

  getAllRecords: (callback) => {
    const sql = `SELECT * FROM User_wise_Report`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { UserID, Date, MobileNumber, Provider, Status } = newData;
    const sql = `
      UPDATE User_wise_Report
      SET
        UserID = ?,
        Date = ?,
        MobileNumber = ?,
        Provider = ?,
        Status = ?
      WHERE id = ?
    `;
    const values = [UserID, Date, MobileNumber, Provider, Status, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM User_wise_Report WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Uwreport;

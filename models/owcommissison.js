const pool = require('../db');

const Owcommission = {
  createRecord: (recordData, callback) => {
    const { SNo, OperatorName, TotalCommission, Date } = recordData;

    const sql = `
      INSERT INTO operator_wise_commission (SNo, OperatorName, TotalCommission, Date)
      VALUES (?, ?, ?, ?)
    `;

    const values = [SNo, OperatorName, TotalCommission, Date];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM operator_wise_commission WHERE id = ?`;
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
    const sql = `SELECT * FROM operator_wise_commission`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { SNo, OperatorName, TotalCommission, Date } = newData;
    const sql = `
      UPDATE operator_wise_commission
      SET SNo = ?, OperatorName = ?, TotalCommission = ?, Date = ?
      WHERE id = ?
    `;
    const values = [SNo, OperatorName, TotalCommission, Date, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM operator_wise_commission WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Owcommission;

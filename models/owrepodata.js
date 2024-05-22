const pool = require('../db');

const Owrepodata = {
  createRecord: (recordData, callback) => {
    const { SNo, ProviderName, Count, TotalSuccess } = recordData;

    const sql = `
      INSERT INTO operator_wise_repo_data (SNo, ProviderName, Count, TotalSuccess)
      VALUES (?, ?, ?, ?)
    `;

    const values = [SNo, ProviderName, Count, TotalSuccess];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM operator_wise_repo_data WHERE id = ?`;
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
    const sql = `SELECT * FROM operator_wise_repo_data`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { SNo, ProviderName, Count, TotalSuccess } = newData;
    const sql = `
      UPDATE operator_wise_repo_data
      SET SNo = ?, ProviderName = ?, Count = ?, TotalSuccess = ?
      WHERE id = ?
    `;
    const values = [SNo, ProviderName, Count, TotalSuccess, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM operator_wise_repo_data WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Owrepodata;

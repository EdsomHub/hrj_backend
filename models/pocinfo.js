const pool = require('../db');

const PocInfo = {
  createRecord: (recordData, callback) => {
    const { Operator_ID, Provider_type, Commission_Percentage, Timestamp } = recordData;

    const sql = `
      INSERT INTO Package_OC_Info (Operator_ID, Provider_type, Commission_Percentage, Timestamp)
      VALUES (?, ?, ?, ?)
    `;

    const values = [Operator_ID, Provider_type, Commission_Percentage, Timestamp];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM Package_OC_Info WHERE id = ?`;
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
    const sql = `SELECT * FROM Package_OC_Info`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { Operator_ID, Provider_type, Commission_Percentage, Timestamp } = newData;
    const sql = `
      UPDATE Package_OC_Info
      SET Operator_ID = ?, Provider_type = ?, Commission_Percentage = ?, Timestamp = ?
      WHERE id = ?
    `;
    const values = [Operator_ID, Provider_type, Commission_Percentage, Timestamp, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM Package_OC_Info WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = PocInfo;

const pool = require('../../db');

const Package = {
  createRecord: (recordData, callback) => {
    const { packageID, packageName, Commission, Is_Percent } = recordData;

    const sql = `
      INSERT INTO package (packageID, packageName, Commission, Is_Percent)
      VALUES (?, ?, ?, ?)
    `;

    const values = [packageID, packageName, Commission, Is_Percent];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM package WHERE id = ?`;
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
    const sql = `SELECT * FROM package`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { packageID, packageName, Commission, Is_Percent } = newData;
    const sql = `
      UPDATE package
      SET packageID = ?, packageName = ?, Commission = ?, Is_Percent = ?
      WHERE id = ?
    `;
    const values = [packageID, packageName, Commission, Is_Percent, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM package WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Package;

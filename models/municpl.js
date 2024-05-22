const pool = require('../db');

const Municpl = {
  createRecord: (recordData, callback) => {
    const { field, muncipal_tax_provider } = recordData;

    const sql = `
      INSERT INTO muncipal_tax (field, muncipal_tax_provider)
      VALUES (?, ?)
    `;

    const values = [field, muncipal_tax_provider];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM muncipal_tax WHERE id = ?`;
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
    const sql = `SELECT * FROM muncipal_tax`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { field, muncipal_tax_provider } = newData;
    const sql = `
      UPDATE muncipal_tax
      SET field = ?, muncipal_tax_provider = ?
      WHERE id = ?
    `;
    const values = [field, muncipal_tax_provider, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM muncipal_tax WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Municpl;

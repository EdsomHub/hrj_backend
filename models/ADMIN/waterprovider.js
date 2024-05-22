const pool = require('../../db');

const WaterProvider = {
  createProvider: (providerData, callback) => {
    const { water_provider, fields } = providerData;

    const sql = `
      INSERT INTO water_provider (water_provider, fields)
      VALUES (?, ?)
    `;

    const values = [water_provider, fields];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getProviderById: (providerId, callback) => {
    const sql = `SELECT * FROM water_provider WHERE id = ?`;
    const values = [providerId];

    pool.query(sql, values, (err, rows) => {
      if (err) {
        return callback(err);
      }
      if (rows.length === 0) {
        return callback(null, null); // Provider not found
      }
      return callback(null, rows[0]);
    });
  },

  getAllProviders: (callback) => {
    const sql = `SELECT * FROM water_provider`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateProviderById: (providerId, newData, callback) => {
    const { water_provider, fields } = newData;
    const sql = `
      UPDATE water_provider
      SET water_provider = ?, fields = ?
      WHERE id = ?
    `;
    const values = [water_provider, fields, providerId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteProviderById: (providerId, callback) => {
    const sql = `DELETE FROM water_provider WHERE id = ?`;
    const values = [providerId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = WaterProvider;

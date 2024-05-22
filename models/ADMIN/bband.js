const pool = require('../../db');

class Bband {
  constructor(id, BRAODBAND_PROVIDERS, field) {
    this.id = id;
    this.BRAODBAND_PROVIDERS = BRAODBAND_PROVIDERS;
    this.field = field;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM broadband_providers', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const bbandProviders = results.map(row => new Bband(row.id, row.BRAODBAND_PROVIDERS, row.field));
      callback(null, bbandProviders);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM broadband_providers WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const bbandProviderData = results[0];
      const bbandProvider = new Bband(bbandProviderData.id, bbandProviderData.BRAODBAND_PROVIDERS, bbandProviderData.field);
      callback(null, bbandProvider);
    });
  }

  static create(BRAODBAND_PROVIDERS, field, callback) {
    pool.query('INSERT INTO broadband_providers (BRAODBAND_PROVIDERS, field) VALUES (?, ?)', [BRAODBAND_PROVIDERS, field], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, BRAODBAND_PROVIDERS, field, callback) {
    pool.query('UPDATE broadband_providers SET BRAODBAND_PROVIDERS = ?, field = ? WHERE id = ?', [BRAODBAND_PROVIDERS, field, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM broadband_providers WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Bband;

const pool = require('../../db');

class Fastag {
  constructor(id, FLD_1, Provider) {
    this.id = id;
    this.FLD_1 = FLD_1;
    this.Provider = Provider;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM FASTag', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const fastags = results.map(row => new Fastag(row.id, row.FLD_1, row.Provider));
      callback(null, fastags);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM FASTag WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const fastagData = results[0];
      const fastag = new Fastag(fastagData.id, fastagData.FLD_1, fastagData.Provider);
      callback(null, fastag);
    });
  }

  static create(FLD_1, Provider, callback) {
    pool.query('INSERT INTO FASTag (FLD_1, Provider) VALUES (?, ?)', [FLD_1, Provider], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, FLD_1, Provider, callback) {
    pool.query('UPDATE FASTag SET FLD_1 = ?, Provider = ? WHERE id = ?', [FLD_1, Provider, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM FASTag WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Fastag;

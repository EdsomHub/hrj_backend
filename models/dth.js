const pool = require('../db');

class Dth {
  constructor(id, FLD_1, FLD_2, Provider) {
    this.id = id;
    this.FLD_1 = FLD_1;
    this.FLD_2 = FLD_2;
    this.Provider = Provider;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM DTH', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const dthData = results.map(row => new Dth(row.id, row.FLD_1, row.FLD_2, row.Provider));
      callback(null, dthData);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM DTH WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const dthData = results[0];
      const dth = new Dth(dthData.id, dthData.FLD_1, dthData.FLD_2, dthData.Provider);
      callback(null, dth);
    });
  }

  static create(FLD_1, FLD_2, Provider, callback) {
    pool.query('INSERT INTO DTH (FLD_1, FLD_2, Provider) VALUES (?, ?, ?)', [FLD_1, FLD_2, Provider], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, FLD_1, FLD_2, Provider, callback) {
    pool.query('UPDATE DTH SET FLD_1 = ?, FLD_2 = ?, Provider = ? WHERE id = ?', [FLD_1, FLD_2, Provider, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM DTH WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Dth;

const pool = require('../db');

class Elec {
  constructor(Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3) {
    this.Biller = Biller;
    this.FLD_1 = FLD_1;
    this.FLD_1_Length_Type = FLD_1_Length_Type;
    this.FLD_2 = FLD_2;
    this.FLD_2_Length_Type = FLD_2_Length_Type;
    this.FLD_3 = FLD_3;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM electricity1', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const elecs = results.map(row => new Elec(row.Biller, row.FLD_1, row.FLD_1_Length_Type, row.FLD_2, row.FLD_2_Length_Type, row.FLD_3));
      callback(null, elecs);
    });
  }

  static getById(Biller, callback) {
    pool.query('SELECT * FROM electricity1 WHERE Biller = ?', [Biller], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const elecData = results[0];
      const elec = new Elec(elecData.Biller, elecData.FLD_1, elecData.FLD_1_Length_Type, elecData.FLD_2, elecData.FLD_2_Length_Type, elecData.FLD_3);
      callback(null, elec);
    });
  }

  static create(Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3, callback) {
    pool.query('INSERT INTO electricity1 (Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3) VALUES (?, ?, ?, ?, ?, ?)', [Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(Biller, FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3, callback) {
    pool.query('UPDATE electricity1 SET FLD_1 = ?, FLD_1_Length_Type = ?, FLD_2 = ?, FLD_2_Length_Type = ?, FLD_3 = ? WHERE Biller = ?', [FLD_1, FLD_1_Length_Type, FLD_2, FLD_2_Length_Type, FLD_3, Biller], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(Biller, callback) {
    pool.query('DELETE FROM electricity1 WHERE Biller = ?', [Biller], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Elec;

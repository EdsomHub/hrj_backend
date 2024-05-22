const pool = require('../../db');

class Login {
  constructor(mobile_number) {
    this.mobile_number = mobile_number;
  }

  static getByMobileNumber(mobileNumber, callback) {
    pool.query('SELECT * FROM M1 WHERE mobile_number = ?', [mobileNumber], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const userData = results[0];
      const user = new Login(userData.mobile_number);
      callback(null, user);
    });
  }

  static create(mobileNumber, callback) {
    pool.query('INSERT INTO M1 (mobile_number) VALUES (?)', [mobileNumber], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(mobileNumber, callback) {
    pool.query('UPDATE M1 SET mobile_number = ? WHERE mobile_number = ?', [mobileNumber, mobileNumber], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(mobileNumber, callback) {
    pool.query('DELETE FROM M1 WHERE mobile_number = ?', [mobileNumber], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Login;

const pool = require('../../db');

class Aeps {
  constructor(id, TransactionID, UserID, TransactionType, Amount, TransactionDate, Status) {
    this.id = id;
    this.TransactionID = TransactionID;
    this.UserID = UserID;
    this.TransactionType = TransactionType;
    this.Amount = Amount;
    this.TransactionDate = TransactionDate;
    this.Status = Status;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM aeps_history', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const transactions = results.map(row => new Aeps(row.id, row.TransactionID, row.UserID, row.TransactionType, row.Amount, row.TransactionDate, row.Status));
      callback(null, transactions);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM aeps_history WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const transactionData = results[0];
      const transaction = new Aeps(transactionData.id, transactionData.TransactionID, transactionData.UserID, transactionData.TransactionType, transactionData.Amount, transactionData.TransactionDate, transactionData.Status);
      callback(null, transaction);
    });
  }

  static create(TransactionID, UserID, TransactionType, Amount, TransactionDate, Status, callback) {
    pool.query('INSERT INTO aeps_history (TransactionID, UserID, TransactionType, Amount, TransactionDate, Status) VALUES (?, ?, ?, ?, ?, ?)', [TransactionID, UserID, TransactionType, Amount, TransactionDate, Status], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, TransactionID, UserID, TransactionType, Amount, TransactionDate, Status, callback) {
    pool.query('UPDATE aeps_history SET TransactionID = ?, UserID = ?, TransactionType = ?, Amount = ?, TransactionDate = ?, Status = ? WHERE id = ?', [TransactionID, UserID, TransactionType, Amount, TransactionDate, Status, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM aeps_history WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Aeps;

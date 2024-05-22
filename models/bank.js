const pool = require('../db');

class Bank {
  constructor(id, BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible) {
    this.id = id;
    this.BankName = BankName;
    this.AccountName = AccountName;
    this.AccountNumber = AccountNumber;
    this.IFSC = IFSC;
    this.BranchName = BranchName;
    this.Timestamp = Timestamp;
    this.IsDMR = IsDMR;
    this.IsMain = IsMain;
    this.IsVisible = IsVisible;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM banks', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const banks = results.map(row => new Bank(row.id, row.BankName, row.AccountName, row.AccountNumber, row.IFSC, row.BranchName, row.Timestamp, row.IsDMR, row.IsMain, row.IsVisible));
      callback(null, banks);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM banks WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const bankData = results[0];
      const bank = new Bank(bankData.id, bankData.BankName, bankData.AccountName, bankData.AccountNumber, bankData.IFSC, bankData.BranchName, bankData.Timestamp, bankData.IsDMR, bankData.IsMain, bankData.IsVisible);
      callback(null, bank);
    });
  }

  static create(BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible, callback) {
    pool.query('INSERT INTO banks (BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', [BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible, callback) {
    pool.query('UPDATE banks SET BankName = ?, AccountName = ?, AccountNumber = ?, IFSC = ?, BranchName = ?, Timestamp = ?, IsDMR = ?, IsMain = ?, IsVisible = ? WHERE id = ?', [BankName, AccountName, AccountNumber, IFSC, BranchName, Timestamp, IsDMR, IsMain, IsVisible, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM banks WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Bank;

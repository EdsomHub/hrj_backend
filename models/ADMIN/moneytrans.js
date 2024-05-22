const pool = require('../../db');

const Moneytrans = {
  createTransaction: (transactionData, callback) => {
    const {
      SenderUserID,
      ReceiverUserID,
      Amount,
      TransferDate,
      Status
    } = transactionData;

    const sql = `
      INSERT INTO money_trans_hist (
        SenderUserID,
        ReceiverUserID,
        Amount,
        TransferDate,
        Status
      ) VALUES (?, ?, ?, ?, ?)
    `;

    const values = [
      SenderUserID,
      ReceiverUserID,
      Amount,
      TransferDate,
      Status
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getTransactionById: (transactionId, callback) => {
    const sql = `SELECT * FROM money_trans_hist WHERE TransactionID = ?`;
    const values = [transactionId];

    pool.query(sql, values, (err, rows) => {
      if (err) {
        return callback(err);
      }
      if (rows.length === 0) {
        return callback(null, null); // Transaction not found
      }
      return callback(null, rows[0]);
    });
  },

  getAllTransactions: (callback) => {
    const sql = `SELECT * FROM money_trans_hist`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateTransactionById: (transactionId, newData, callback) => {
    const { SenderUserID, ReceiverUserID, Amount, TransferDate, Status } = newData;
    const sql = `
      UPDATE money_trans_hist
      SET SenderUserID = ?, ReceiverUserID = ?, Amount = ?, TransferDate = ?, Status = ?
      WHERE TransactionID = ?
    `;
    const values = [SenderUserID, ReceiverUserID, Amount, TransferDate, Status, transactionId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteTransactionById: (transactionId, callback) => {
    const sql = `DELETE FROM money_trans_hist WHERE TransactionID = ?`;
    const values = [transactionId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Moneytrans;

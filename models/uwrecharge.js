const pool = require('../db');

const Uwrecharge = {
  createRecord: (recordData, callback) => {
    const { SNo, OutletName, TotalRecharge, TotalDeduction, TotalCommission } = recordData;

    const sql = `
      INSERT INTO User_wise_Recharge (
        SNo,
        OutletName,
        TotalRecharge,
        TotalDeduction,
        TotalCommission
      ) VALUES (?, ?, ?, ?, ?)
    `;

    const values = [SNo, OutletName, TotalRecharge, TotalDeduction, TotalCommission];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM User_wise_Recharge WHERE id = ?`;
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
    const sql = `SELECT * FROM User_wise_Recharge`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { SNo, OutletName, TotalRecharge, TotalDeduction, TotalCommission } = newData;
    const sql = `
      UPDATE User_wise_Recharge
      SET
        SNo = ?,
        OutletName = ?,
        TotalRecharge = ?,
        TotalDeduction = ?,
        TotalCommission = ?
      WHERE id = ?
    `;
    const values = [SNo, OutletName, TotalRecharge, TotalDeduction, TotalCommission, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM User_wise_Recharge WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Uwrecharge;

const pool = require('../db');

const SuperDistributor = {
  createRecord: (recordData, callback) => {
    const {
      name,
      middle_name,
      last_name,
      mobile_number,
      email,
      outlet_name,
      aadharcard_number,
      gstin,
      date_of_birth,
      remark,
      bank_account_number,
      ifsc,
      main_min_balance,
      low_balance_alert_limit,
      address,
      pin_code,
      district,
      state,
      city,
      alternate_number,
      pancard_number,
      voter_id_number,
      aeps_unsettled_fund
    } = recordData;

    const sql = `
      INSERT INTO Super_Distributor (
        name,
        middle_name,
        last_name,
        mobile_number,
        email,
        outlet_name,
        aadharcard_number,
        gstin,
        date_of_birth,
        remark,
        bank_account_number,
        ifsc,
        main_min_balance,
        low_balance_alert_limit,
        address,
        pin_code,
        district,
        state,
        city,
        alternate_number,
        pancard_number,
        voter_id_number,
        aeps_unsettled_fund
      )
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    const values = [
      name,
      middle_name,
      last_name,
      mobile_number,
      email,
      outlet_name,
      aadharcard_number,
      gstin,
      date_of_birth,
      remark,
      bank_account_number,
      ifsc,
      main_min_balance,
      low_balance_alert_limit,
      address,
      pin_code,
      district,
      state,
      city,
      alternate_number,
      pancard_number,
      voter_id_number,
      aeps_unsettled_fund
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM Super_Distributor WHERE id = ?`;
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
    const sql = `SELECT * FROM Super_Distributor`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const {
      name,
      middle_name,
      last_name,
      mobile_number,
      email,
      outlet_name,
      aadharcard_number,
      gstin,
      date_of_birth,
      remark,
      bank_account_number,
      ifsc,
      main_min_balance,
      low_balance_alert_limit,
      address,
      pin_code,
      district,
      state,
      city,
      alternate_number,
      pancard_number,
      voter_id_number,
      aeps_unsettled_fund
    } = newData;

    const sql = `
      UPDATE Super_Distributor
      SET 
        name = ?,
        middle_name = ?,
        last_name = ?,
        mobile_number = ?,
        email = ?,
        outlet_name = ?,
        aadharcard_number = ?,
        gstin = ?,
        date_of_birth = ?,
        remark = ?,
        bank_account_number = ?,
        ifsc = ?,
        main_min_balance = ?,
        low_balance_alert_limit = ?,
        address = ?,
        pin_code = ?,
        district = ?,
        state = ?,
        city = ?,
        alternate_number = ?,
        pancard_number = ?,
        voter_id_number = ?,
        aeps_unsettled_fund = ?
      WHERE id = ?
    `;

    const values = [
      name,
      middle_name,
      last_name,
      mobile_number,
      email,
      outlet_name,
      aadharcard_number,
      gstin,
      date_of_birth,
      remark,
      bank_account_number,
      ifsc,
      main_min_balance,
      low_balance_alert_limit,
      address,
      pin_code,
      district,
      state,
      city,
      alternate_number,
      pancard_number,
      voter_id_number,
      aeps_unsettled_fund,
      recordId
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      if (result.affectedRows === 0) {
        return callback(null, false); // Record not found
      }
      return callback(null, true); // Updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM Super_Distributor WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      if (result.affectedRows === 0) {
        return callback(null, false); // Record not found
      }
      return callback(null, true); // Deleted successfully
    });
  }
};

module.exports = SuperDistributor;

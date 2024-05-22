const pool = require('../../db');

class Distributor {
  constructor(
    name, middle_name, last_name, mobile_number, email, outlet_name, aadharcard_number,
    gstin, date_of_birth, remark, bank_account_number, ifsc, main_min_balance,
    low_balance_alert_limit, address, pin_code, district, state, city,
    alternate_number, pancard_number, voter_id_number, aeps_unsettled_fund,
    isActive, userType, createdDate, updatedDate, createdBy, updatedBy
  ) {
    this.name = name;
    this.middle_name = middle_name;
    this.last_name = last_name;
    this.mobile_number = mobile_number;
    this.email = email;
    this.outlet_name = outlet_name;
    this.aadharcard_number = aadharcard_number;
    this.gstin = gstin;
    this.date_of_birth = date_of_birth;
    this.remark = remark;
    this.bank_account_number = bank_account_number;
    this.ifsc = ifsc;
    this.main_min_balance = main_min_balance;
    this.low_balance_alert_limit = low_balance_alert_limit;
    this.address = address;
    this.pin_code = pin_code;
    this.district = district;
    this.state = state;
    this.city = city;
    this.alternate_number = alternate_number;
    this.pancard_number = pancard_number;
    this.voter_id_number = voter_id_number;
    this.aeps_unsettled_fund = aeps_unsettled_fund;
    this.isActive = isActive;
    this.userType = userType;
    this.createdDate = createdDate;
    this.updatedDate = updatedDate;
    this.createdBy = createdBy;
    this.updatedBy = updatedBy;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM Distributor', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, results);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM Distributor WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      callback(null, results[0]);
    });
  }

  static create(distributorData, callback) {
    pool.query('INSERT INTO Distributor SET ?', distributorData, (error, results) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, results.insertId);
    });
  }

  static update(id, distributorData, callback) {
    pool.query('UPDATE Distributor SET ? WHERE id = ?', [distributorData, id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, results.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM Distributor WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, results.affectedRows > 0);
    });
  }
}

module.exports = Distributor;

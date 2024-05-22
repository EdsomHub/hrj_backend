const pool = require('../db');

class ChnlPartnr {
  constructor(id, name, middle_name, last_name, mobile_number, email, outlet_name, aadharcard_number, gstin, date_of_birth, remark, bank_account_number, ifsc, main_min_balance, low_balance_alert_limit, address, pin_code, district, state, city, alternate_number, pancard_number, voter_id_number, aeps_unsettled_fund, isActive, userType, createdDate, updatedDate, createdBy, updatedBy) {
    this.id = id;
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
    pool.query('SELECT * FROM channel_partner', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const chnlPartners = results.map(row => new ChnlPartnr(
        row.id, row.name, row.middle_name, row.last_name, row.mobile_number, row.email, row.outlet_name, row.aadharcard_number, row.gstin, row.date_of_birth, row.remark, row.bank_account_number, row.ifsc, row.main_min_balance, row.low_balance_alert_limit, row.address, row.pin_code, row.district, row.state, row.city, row.alternate_number, row.pancard_number, row.voter_id_number, row.aeps_unsettled_fund, row.isActive, row.userType, row.createdDate, row.updatedDate, row.createdBy, row.updatedBy
      ));
      callback(null, chnlPartners);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM channel_partner WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const chnlPartnerData = results[0];
      const chnlPartner = new ChnlPartnr(
        chnlPartnerData.id, chnlPartnerData.name, chnlPartnerData.middle_name, chnlPartnerData.last_name, chnlPartnerData.mobile_number, chnlPartnerData.email, chnlPartnerData.outlet_name, chnlPartnerData.aadharcard_number, chnlPartnerData.gstin, chnlPartnerData.date_of_birth, chnlPartnerData.remark, chnlPartnerData.bank_account_number, chnlPartnerData.ifsc, chnlPartnerData.main_min_balance, chnlPartnerData.low_balance_alert_limit, chnlPartnerData.address, chnlPartnerData.pin_code, chnlPartnerData.district, chnlPartnerData.state, chnlPartnerData.city, chnlPartnerData.alternate_number, chnlPartnerData.pancard_number, chnlPartnerData.voter_id_number, chnlPartnerData.aeps_unsettled_fund, chnlPartnerData.isActive, chnlPartnerData.userType, chnlPartnerData.createdDate, chnlPartnerData.updatedDate, chnlPartnerData.createdBy, chnlPartnerData.updatedBy
      );
      callback(null, chnlPartner);
    });
  }

  static create(data, callback) {
    pool.query('INSERT INTO channel_partner SET ?', data, (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, data, callback) {
    pool.query('UPDATE channel_partner SET ? WHERE id = ?', [data, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM channel_partner WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = ChnlPartnr;

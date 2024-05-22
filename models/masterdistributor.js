const pool = require('../db');

class MasterDistributor {
  constructor(name, middleName, lastName, mobileNumber, email, outletName, aadharcardNumber, gstin, dateOfBirth, remark, bankAccountNumber, ifsc, mainMinBalance, lowBalanceAlertLimit, address, pinCode, district, state, city, alternateNumber, pancardNumber, voterIdNumber, aepsUnsettledFund) {
    this.name = name;
    this.middleName = middleName;
    this.lastName = lastName;
    this.mobileNumber = mobileNumber;
    this.email = email;
    this.outletName = outletName;
    this.aadharcardNumber = aadharcardNumber;
    this.gstin = gstin;
    this.dateOfBirth = dateOfBirth;
    this.remark = remark;
    this.bankAccountNumber = bankAccountNumber;
    this.ifsc = ifsc;
    this.mainMinBalance = mainMinBalance;
    this.lowBalanceAlertLimit = lowBalanceAlertLimit;
    this.address = address;
    this.pinCode = pinCode;
    this.district = district;
    this.state = state;
    this.city = city;
    this.alternateNumber = alternateNumber;
    this.pancardNumber = pancardNumber;
    this.voterIdNumber = voterIdNumber;
    this.aepsUnsettledFund = aepsUnsettledFund;
  }

  static getAll(callback) {
    const sql = 'SELECT * FROM Master_Distributor';
    pool.query(sql, (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const masterDistributors = results.map(row => new MasterDistributor(row.name, row.middle_name, row.last_name, row.mobile_number, row.email, row.outlet_name, row.aadharcard_number, row.gstin, row.date_of_birth, row.remark, row.bank_account_number, row.ifsc, row.main_min_balance, row.low_balance_alert_limit, row.address, row.pin_code, row.district, row.state, row.city, row.alternate_number, row.pancard_number, row.voter_id_number, row.aeps_unsettled_fund));
      callback(null, masterDistributors);
    });
  }

  static getById(id, callback) {
    const sql = 'SELECT * FROM Master_Distributor WHERE id = ?';
    pool.query(sql, [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const distributorData = results[0];
      const distributor = new MasterDistributor(distributorData.name, distributorData.middle_name, distributorData.last_name, distributorData.mobile_number, distributorData.email, distributorData.outlet_name, distributorData.aadharcard_number, distributorData.gstin, distributorData.date_of_birth, distributorData.remark, distributorData.bank_account_number, distributorData.ifsc, distributorData.main_min_balance, distributorData.low_balance_alert_limit, distributorData.address, distributorData.pin_code, distributorData.district, distributorData.state, distributorData.city, distributorData.alternate_number, distributorData.pancard_number, distributorData.voter_id_number, distributorData.aeps_unsettled_fund);
      callback(null, distributor);
    });
  }

  static create(distributor, callback) {
    const {
      name,
      middleName,
      lastName,
      mobileNumber,
      email,
      outletName,
      aadharcardNumber,
      gstin,
      dateOfBirth,
      remark,
      bankAccountNumber,
      ifsc,
      mainMinBalance,
      lowBalanceAlertLimit,
      address,
      pinCode,
      district,
      state,
      city,
      alternateNumber,
      pancardNumber,
      voterIdNumber,
      aepsUnsettledFund
    } = distributor;
    const sql = 'INSERT INTO Master_Distributor (name, middle_name, last_name, mobile_number, email, outlet_name, aadharcard_number, gstin, date_of_birth, remark, bank_account_number, ifsc, main_min_balance, low_balance_alert_limit, address, pin_code, district, state, city, alternate_number, pancard_number, voter_id_number, aeps_unsettled_fund) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
    pool.query(sql, [name, middleName, lastName, mobileNumber, email, outletName, aadharcardNumber, gstin, dateOfBirth, remark, bankAccountNumber, ifsc, mainMinBalance, lowBalanceAlertLimit, address, pinCode, district, state, city, alternateNumber, pancardNumber, voterIdNumber, aepsUnsettledFund], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, distributor, callback) {
    const {
      name,
      middleName,
      lastName,
      mobileNumber,
      email,
      outletName,
      aadharcardNumber,
      gstin,
      dateOfBirth,
      remark,
      bankAccountNumber,
      ifsc,
      mainMinBalance,
      lowBalanceAlertLimit,
      address,
      pinCode,
      district,
      state,
      city,
      alternateNumber,
      pancardNumber,
      voterIdNumber,
      aepsUnsettledFund
    } = distributor;
    const sql = 'UPDATE Master_Distributor SET name = ?, middle_name = ?, last_name = ?, mobile_number = ?, email = ?, outlet_name = ?, aadharcard_number = ?, gstin = ?, date_of_birth = ?, remark = ?, bank_account_number = ?, ifsc = ?, main_min_balance = ?, low_balance_alert_limit = ?, address = ?, pin_code = ?, district = ?, state = ?, city = ?, alternate_number = ?, pancard_number = ?, voter_id_number = ?, aeps_unsettled_fund = ? WHERE id = ?';
    pool.query(sql, [name, middleName, lastName, mobileNumber, email, outletName, aadharcardNumber, gstin, dateOfBirth, remark, bankAccountNumber, ifsc, mainMinBalance, lowBalanceAlertLimit, address, pinCode, district, state, city, alternateNumber, pancardNumber, voterIdNumber, aepsUnsettledFund, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    const sql = 'DELETE FROM Master_Distributor WHERE id = ?';
    pool.query(sql, [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = MasterDistributor;

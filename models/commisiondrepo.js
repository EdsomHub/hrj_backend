const pool = require('../db');

class Cdrepo {
  constructor(SNo, Date, MobileNumber, UserID, Tranid, Reqid, ProviderType, Provider, API, Source, CommissionAmount) {
    this.SNo = SNo;
    this.Date = Date;
    this.MobileNumber = MobileNumber;
    this.UserID = UserID;
    this.Tranid = Tranid;
    this.Reqid = Reqid;
    this.ProviderType = ProviderType;
    this.Provider = Provider;
    this.API = API;
    this.Source = Source;
    this.CommissionAmount = CommissionAmount;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM Commission_Distribution_Repo', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const commisionDistributions = results.map(row => new Cdrepo(row.SNo, row.Date, row.MobileNumber, row.UserID, row.Tranid, row.Reqid, row.ProviderType, row.Provider, row.API, row.Source, row.CommissionAmount));
      callback(null, commisionDistributions);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM Commission_Distribution_Repo WHERE SNo = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const commisionDistributionData = results[0];
      const commisionDistribution = new Cdrepo(commisionDistributionData.SNo, commisionDistributionData.Date, commisionDistributionData.MobileNumber, commisionDistributionData.UserID, commisionDistributionData.Tranid, commisionDistributionData.Reqid, commisionDistributionData.ProviderType, commisionDistributionData.Provider, commisionDistributionData.API, commisionDistributionData.Source, commisionDistributionData.CommissionAmount);
      callback(null, commisionDistribution);
    });
  }

  static create(data, callback) {
    const { SNo, Date, MobileNumber, UserID, Tranid, Reqid, ProviderType, Provider, API, Source, CommissionAmount } = data;
    pool.query('INSERT INTO Commission_Distribution_Repo (SNo, Date, MobileNumber, UserID, Tranid, Reqid, ProviderType, Provider, API, Source, CommissionAmount) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [SNo, Date, MobileNumber, UserID, Tranid, Reqid, ProviderType, Provider, API, Source, CommissionAmount], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, data, callback) {
    const { Date, MobileNumber, UserID, Tranid, Reqid, ProviderType, Provider, API, Source, CommissionAmount } = data;
    pool.query('UPDATE Commission_Distribution_Repo SET Date = ?, MobileNumber = ?, UserID = ?, Tranid = ?, Reqid = ?, ProviderType = ?, Provider = ?, API = ?, Source = ?, CommissionAmount = ? WHERE SNo = ?', [Date, MobileNumber, UserID, Tranid, Reqid, ProviderType, Provider, API, Source, CommissionAmount, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM Commission_Distribution_Repo WHERE SNo = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Cdrepo;

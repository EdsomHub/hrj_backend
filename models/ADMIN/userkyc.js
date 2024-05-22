const pool = require('../../db');

const UserKYC = {
  createRecord: (recordData, callback) => {
    const {
      User,
      Aadhaar,
      PanCard,
      GST,
      Bank,
      VoterID,
      Files,
      API_KYC_Status,
      Business_Name_Address_Proof,
      Action,
      Reason
    } = recordData;

    const sql = `
      INSERT INTO User_KYC (
        User,
        Aadhaar,
        PanCard,
        GST,
        Bank,
        VoterID,
        Files,
        API_KYC_Status,
        Business_Name_Address_Proof,
        Action,
        Reason
      )
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    const values = [
      User,
      Aadhaar,
      PanCard,
      GST,
      Bank,
      VoterID,
      JSON.stringify(Files), // Assuming Files is an array of strings
      API_KYC_Status,
      Business_Name_Address_Proof,
      Action,
      Reason
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM User_KYC WHERE id = ?`;
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
    const sql = `SELECT * FROM User_KYC`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const {
      User,
      Aadhaar,
      PanCard,
      GST,
      Bank,
      VoterID,
      Files,
      API_KYC_Status,
      Business_Name_Address_Proof,
      Action,
      Reason
    } = newData;

    const sql = `
      UPDATE User_KYC
      SET
        User = ?,
        Aadhaar = ?,
        PanCard = ?,
        GST = ?,
        Bank = ?,
        VoterID = ?,
        Files = ?,
        API_KYC_Status = ?,
        Business_Name_Address_Proof = ?,
        Action = ?,
        Reason = ?
      WHERE id = ?
    `;

    const values = [
      User,
      Aadhaar,
      PanCard,
      GST,
      Bank,
      VoterID,
      JSON.stringify(Files), // Assuming Files is an array of strings
      API_KYC_Status,
      Business_Name_Address_Proof,
      Action,
      Reason,
      recordId
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM User_KYC WHERE id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = UserKYC;

const pool = require('../../db');

const Whitelist = {
  createRecord: (recordData, callback) => {
    const { User, IPAddress, DateAdded } = recordData;

    const sql = `
      INSERT INTO Whitelist_User_Login (User, IPAddress, DateAdded)
      VALUES (?, ?, ?)
    `;

    const values = [User, IPAddress, DateAdded];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getRecordById: (recordId, callback) => {
    const sql = `SELECT * FROM Whitelist_User_Login WHERE Id = ?`;
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
    const sql = `SELECT * FROM Whitelist_User_Login`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateRecordById: (recordId, newData, callback) => {
    const { User, IPAddress, DateAdded } = newData;
    const sql = `
      UPDATE Whitelist_User_Login
      SET User = ?, IPAddress = ?, DateAdded = ?
      WHERE Id = ?
    `;
    const values = [User, IPAddress, DateAdded, recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteRecordById: (recordId, callback) => {
    const sql = `DELETE FROM Whitelist_User_Login WHERE Id = ?`;
    const values = [recordId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Whitelist;

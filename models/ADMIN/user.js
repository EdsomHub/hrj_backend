// user.js

const pool = require('../../db');

class User {
  constructor(id, username, password, isActive, userType, createdBy, createdDate, updatedBy, updatedDate) {
    this.id = id;
    this.username = username;
    this.password = password;
    this.isActive = isActive;
    this.userType = userType;
    this.createdBy = createdBy;
    this.createdDate = createdDate;
    this.updatedBy = updatedBy;
    this.updatedDate = updatedDate;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM User_Table', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const users = results.map(row => new User(row.id, row.username, row.password, row.isActive, row.userType, row.createdBy, row.createdDate, row.updatedBy, row.updatedDate));
      callback(null, users);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM User_Table WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const userData = results[0];
      const user = new User(userData.id, userData.username, userData.password, userData.isActive, userData.userType, userData.createdBy, userData.createdDate, userData.updatedBy, userData.updatedDate);
      callback(null, user);
    });
  }

  static create(username, password, isActive, userType, createdBy, createdDate, updatedBy, updatedDate, callback) {
    pool.query('INSERT INTO User_Table (username, password, isActive, userType, createdBy, createdDate, updatedBy, updatedDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', [username, password, isActive, userType, createdBy, createdDate, updatedBy, updatedDate], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, username, password, isActive, userType, createdBy, createdDate, updatedBy, updatedDate, callback) {
    pool.query('UPDATE User_Table SET username = ?, password = ?, isActive = ?, userType = ?, createdBy = ?, createdDate = ?, updatedBy = ?, updatedDate = ? WHERE id = ?', [username, password, isActive, userType, createdBy, createdDate, updatedBy, updatedDate, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM User_Table WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = User;

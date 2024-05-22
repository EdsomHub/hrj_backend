const pool = require('../../db');

class Lsms {
  constructor(Id, Date, SenderNumber, RecipientNumber, Message, Status) {
    this.Id = Id;
    this.Date = Date;
    this.SenderNumber = SenderNumber;
    this.RecipientNumber = RecipientNumber;
    this.Message = Message;
    this.Status = Status;
  }

  static getAll(callback) {
    const sql = 'SELECT * FROM Longcode_SMS_Log';
    pool.query(sql, (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const lsms = results.map(row => new Lsms(row.Id, row.Date, row.SenderNumber, row.RecipientNumber, row.Message, row.Status));
      callback(null, lsms);
    });
  }

  static getById(id, callback) {
    const sql = 'SELECT * FROM Longcode_SMS_Log WHERE Id = ?';
    pool.query(sql, [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const lsmsData = results[0];
      const lsms = new Lsms(lsmsData.Id, lsmsData.Date, lsmsData.SenderNumber, lsmsData.RecipientNumber, lsmsData.Message, lsmsData.Status);
      callback(null, lsms);
    });
  }

  static create(Date, SenderNumber, RecipientNumber, Message, Status, callback) {
    const sql = 'INSERT INTO Longcode_SMS_Log (Date, SenderNumber, RecipientNumber, Message, Status) VALUES (?, ?, ?, ?, ?)';
    pool.query(sql, [Date, SenderNumber, RecipientNumber, Message, Status], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, Date, SenderNumber, RecipientNumber, Message, Status, callback) {
    const sql = 'UPDATE Longcode_SMS_Log SET Date = ?, SenderNumber = ?, RecipientNumber = ?, Message = ?, Status = ? WHERE Id = ?';
    pool.query(sql, [Date, SenderNumber, RecipientNumber, Message, Status, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    const sql = 'DELETE FROM Longcode_SMS_Log WHERE Id = ?';
    pool.query(sql, [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Lsms;

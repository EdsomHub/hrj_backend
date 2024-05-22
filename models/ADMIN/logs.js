const pool = require('../../db');

class Logs {
  constructor(Id, Date, Thread, Level, Logger, Message, Exception) {
    this.Id = Id;
    this.Date = Date;
    this.Thread = Thread;
    this.Level = Level;
    this.Logger = Logger;
    this.Message = Message;
    this.Exception = Exception;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM Logs', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const logs = results.map(row => new Logs(row.Id, row.Date, row.Thread, row.Level, row.Logger, row.Message, row.Exception));
      callback(null, logs);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM Logs WHERE Id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const logData = results[0];
      const log = new Logs(logData.Id, logData.Date, logData.Thread, logData.Level, logData.Logger, logData.Message, logData.Exception);
      callback(null, log);
    });
  }

  static create(Date, Thread, Level, Logger, Message, Exception, callback) {
    pool.query('INSERT INTO Logs (Date, Thread, Level, Logger, Message, Exception) VALUES (?, ?, ?, ?, ?, ?)', [Date, Thread, Level, Logger, Message, Exception], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, Date, Thread, Level, Logger, Message, Exception, callback) {
    pool.query('UPDATE Logs SET Date = ?, Thread = ?, Level = ?, Logger = ?, Message = ?, Exception = ? WHERE Id = ?', [Date, Thread, Level, Logger, Message, Exception, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM Logs WHERE Id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Logs;

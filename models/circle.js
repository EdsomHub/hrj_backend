const pool = require('../db');

class Circle {
  constructor(id, sname, mappings, name, code, zone) {
    this.id = id;
    this.sname = sname;
    this.mappings = mappings;
    this.name = name;
    this.code = code;
    this.zone = zone;
  }

  static getAll(callback) {
    pool.query('SELECT * FROM Circles', (error, results) => {
      if (error) {
        return callback(error, null);
      }
      const circles = results.map(row => new Circle(row.id, row.sname, row.mappings, row.name, row.code, row.zone));
      callback(null, circles);
    });
  }

  static getById(id, callback) {
    pool.query('SELECT * FROM Circles WHERE id = ?', [id], (error, results) => {
      if (error) {
        return callback(error, null);
      }
      if (results.length === 0) {
        return callback(null, null);
      }
      const circleData = results[0];
      const circle = new Circle(circleData.id, circleData.sname, circleData.mappings, circleData.name, circleData.code, circleData.zone);
      callback(null, circle);
    });
  }

  static create(sname, mappings, name, code, zone, callback) {
    pool.query('INSERT INTO Circles (sname, mappings, name, code, zone) VALUES (?, ?, ?, ?, ?)', [sname, mappings, name, code, zone], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.insertId);
    });
  }

  static update(id, sname, mappings, name, code, zone, callback) {
    pool.query('UPDATE Circles SET sname = ?, mappings = ?, name = ?, code = ?, zone = ? WHERE id = ?', [sname, mappings, name, code, zone, id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }

  static delete(id, callback) {
    pool.query('DELETE FROM Circles WHERE id = ?', [id], (error, result) => {
      if (error) {
        return callback(error, null);
      }
      callback(null, result.affectedRows > 0);
    });
  }
}

module.exports = Circle;

const pool = require('../../db');

const Menu = {
  createMenu: (menuData, callback) => {
    const {
      Menu_Id,
      Menu_Name,
      URL,
      Level,
      isActive
    } = menuData;

    const sql = `
      INSERT INTO menu (
        Menu_Id,
        Menu_Name,
        URL,
        Level,
        isActive
      ) VALUES (?, ?, ?, ?, ?)
    `;

    const values = [
      Menu_Id,
      Menu_Name,
      URL,
      Level,
      isActive
    ];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.insertId);
    });
  },

  getMenuById: (menuId, callback) => {
    const sql = `SELECT * FROM menu WHERE Menu_Id = ?`;
    const values = [menuId];

    pool.query(sql, values, (err, rows) => {
      if (err) {
        return callback(err);
      }
      if (rows.length === 0) {
        return callback(null, null); // Menu not found
      }
      return callback(null, rows[0]);
    });
  },

  getAllMenus: (callback) => {
    const sql = `SELECT * FROM menu`;

    pool.query(sql, (err, rows) => {
      if (err) {
        return callback(err);
      }
      return callback(null, rows);
    });
  },

  updateMenuById: (menuId, newData, callback) => {
    const { Menu_Name, URL, Level, isActive } = newData;
    const sql = `
      UPDATE menu
      SET Menu_Name = ?, URL = ?, Level = ?, isActive = ?
      WHERE Menu_Id = ?
    `;
    const values = [Menu_Name, URL, Level, isActive, menuId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if updated successfully
    });
  },

  deleteMenuById: (menuId, callback) => {
    const sql = `DELETE FROM menu WHERE Menu_Id = ?`;
    const values = [menuId];

    pool.query(sql, values, (err, result) => {
      if (err) {
        return callback(err);
      }
      return callback(null, result.affectedRows > 0); // Return true if deleted successfully
    });
  }
};

module.exports = Menu;

const pool = require('../db'); // Import the MySQL connection pool

class Mpin {
    constructor(mobileNumber, mpin) {
        this.mobileNumber = mobileNumber;
        this.mpin = mpin;
    }

    // Fetch the M-PIN by mobile number
    static getByMobileNumber(mobileNumber, callback) {
        pool.query('SELECT * FROM tbappuser WHERE mobile_number = ?', [mobileNumber], (error, results) => {
            if (error) {
                return callback(error, null);
            }
            if (results.length === 0) {
                return callback(null, null);
            }
            const userData = results[0];
            const mpinInstance = new Mpin(userData.mobile_number, userData.mpin);
            callback(null, mpinInstance);
        });
    }

    // Create a new M-PIN
    static create(mobileNumber, mpin, callback) {
        pool.query('INSERT INTO tbappuser (mobile_number, mpin) VALUES (?, ?)', [mobileNumber, mpin], (error, result) => {
            if (error) {
                return callback(error, null);
            }
            callback(null, result.insertId);
        });
    }

    // Update the M-PIN for a given mobile number
    static update(mobileNumber, mpin, callback) {
        pool.query('UPDATE tbappuser SET mpin = ? WHERE mobile_number = ?', [mpin, mobileNumber], (error, result) => {
            if (error) {
                return callback(error, null);
            }
            callback(null, result.affectedRows > 0);
        });
    }

    // Delete the M-PIN for a given mobile number
    static delete(mobileNumber, callback) {
        pool.query('DELETE FROM tbappuser WHERE mobile_number = ?', [mobileNumber], (error, result) => {
            if (error) {
                return callback(error, null);
            }
            callback(null, result.affectedRows > 0);
        });
    }
}

module.exports = Mpin;

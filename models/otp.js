const pool = require('../db'); // Import the MySQL connection pool

class Otp {
    constructor(mobile_number, otp, user_name) {
        this.mobile_number = mobile_number;
        this.otp = otp;
        this.user_name = user_name;
    }

    // Check if a user already exists by mobile number
    static checkUserExists(mobileNumber, userName,callback) {
        pool.query('SELECT * FROM tbappuser WHERE mobile_number = ? && user_name = ?', [mobileNumber, userName], (error, results) => {
            if (error) {
                return callback(error, null);
            }
            callback(null, results.length > 0);
        });
    }

    // Generate a random 6-digit OTP
    static generateOTP() {
        return Math.floor(100000 + Math.random() * 900000).toString();
    }

    // Store the OTP in the database and return it
    static sendOTP(mobileNumber,userName, callback) {
        const otp = Otp.generateOTP();

        // Store the mobile number and OTP in the database
        pool.query('INSERT INTO tbappuser (mobile_number, user_name, otp) VALUES (?, ?, ?)', [mobileNumber,userName, otp], (error, result) => {
            if (error) {
                return callback(error, null);
            }

            // Return the OTP so it can be sent through other means (e.g., another SMS gateway)
            callback(null, otp);
        });
    }

    // Verify the OTP provided by the user
    static verifyOTP(mobileNumber,userName, otp, callback) {
        pool.query(
            'SELECT * FROM tbappuser WHERE mobile_number = ? AND user_name = ? AND otp = ?',
            [mobileNumber,userName, otp],
            (error, results) => {
                if (error) {
                    return callback(error, null);
                }
                // Check if the provided OTP matches the one in the database
                callback(null, results.length > 0);
            }
        );
    }
}

module.exports = Otp;

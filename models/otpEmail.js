const pool = require('../db'); // Import the MySQL connection pool
const nodemailer = require('nodemailer'); // Import nodemailer for sending emails

class Otp {
    constructor(email, otp, user_name) {
        this.email = email;
        this.otp = otp;
        this.user_name = user_name;
    }

    // Check if a user already exists by email
    static checkUserExists(email, userName, callback) {
        pool.query('SELECT * FROM tbappuser WHERE email = ? && user_name = ?', [email, userName], (error, results) => {
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

    // Store the OTP in the database and send it via email
    static async sendOTP(email, userName, callback) {
        const otp = Otp.generateOTP();
        const transporter = nodemailer.createTransport({
            service: 'gmail',
            auth: {
                user: 'test@edsomfintech.com', // Replace with your email
                pass: 'EdsomFina#123'  // Replace with your email password
            }
        });

        const mailOptions = {
            from: 'test@edsomfintech.com', // Replace with your email
            to: email,
            subject: 'Your OTP Code',
            text: `Your one-time password (OTP) to proceed on iPaisa is ${otp}. This OTP is valid for 5 minutes. Remember, never share your OTP with anyone for security reasons. Thank you, Team iPaisa - Edsom Fintech.`
        };

        try {
            await transporter.sendMail(mailOptions);

            // Store the email and OTP in the database
            pool.query('INSERT INTO tbappuser (email, user_name, otp) VALUES (?, ?, ?)', [email, userName, otp], (error, result) => {
                if (error) {
                    return callback(error, null);
                }
                // Return the OTP so it can be logged or used as needed
                callback(null, otp);
            });
        } catch (error) {
            callback(error, null);
        }
    }

    // Verify the OTP provided by the user
    static verifyOTP(email, userName, otp, callback) {
        pool.query(
            'SELECT * FROM tbappuser WHERE email = ? AND user_name = ? AND otp = ?',
            [email, userName, otp],
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

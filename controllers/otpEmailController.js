const axios = require('axios');
const pool = require('../db');
const moment = require('moment');
const nodemailer = require('nodemailer');

exports.sendOTP = async (req, res) => {
    const { email, user_name } = req.body;
    // Check if email and user_name are provided
    if (!email || !user_name) {
        return res.status(400).json({ error: 'Email and user name are required' });
    }
    try {
        // Generate a random OTP (6 digits)
        const otp = Math.floor(100000 + Math.random() * 900000);
        // Send the OTP via Email
        const msg = `Your one-time password (OTP) to proceed on iPaisa is ${otp}. This OTP is valid for 5 minutes. Remember, never share your OTP with anyone for security reasons. Thank you, Team iPaisa - Edsom Fintech.`;
        
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
            text: msg
        };

        const emailResponse = await transporter.sendMail(mailOptions);
        if (!emailResponse.accepted.length) {
            return res.status(500).json({ error: 'Failed to send OTP' });
        }

        // Current timestamp
        const currentTimestamp = moment().format('YYYY-MM-DD HH:mm:ss');
        // Check if the user already exists
        const [userCheckResults] = await pool.query('SELECT * FROM tbappuser WHERE email = ?', [email]);
        if (userCheckResults.length === 0) {
            // User doesn't exist, insert a new record
            const insertQuery = 'INSERT INTO tbappuser (email, user_name, otp, created_date, updated_date) VALUES (?, ?, ?, ?, ?)';
            await pool.query(insertQuery, [email, user_name, otp, currentTimestamp, currentTimestamp]);
            return res.status(200).json({ message: 'OTP sent successfully' });
        } else {
            // User exists, update the OTP, user_name, and timestamp
            const updateQuery = 'UPDATE tbappuser SET user_name = ?, otp = ?, updated_date = ? WHERE email = ?';
            await pool.query(updateQuery, [user_name, otp, currentTimestamp, email]);
            return res.status(200).json({ message: 'OTP updated successfully' });
        }
    } catch (error) {
        console.error('Error sending OTP:', error);
        return res.status(500).json({ error: 'Internal server error' });
    }
};

exports.verifyOTP = async (req, res) => {
    const { email, otp } = req.body;
    // Validate input
    if (!email || otp == null) {
        return res.status(400).json({ error: 'Email and OTP are required' });
    }
    try {
        // Fetch the user record based on the provided email and OTP
        const [results] = await pool.query('SELECT * FROM tbappuser WHERE email = ? AND otp = ?', [email, otp]);
        // If no matching record is found, the OTP is invalid
        if (results.length === 0) {
            return res.status(400).json({ error: 'Invalid OTP' });
        }
        // Fetch the creation timestamp of the OTP
        const otpSentAt = moment(results[0].created_date); // OTP creation time
        const now = moment(); // Current time
        const otpValidFor = moment.duration(5, 'minutes'); // Validity duration
        console.log(`OTP Sent At: ${otpSentAt.format()}`);
        console.log(`Current Time: ${now.format()}`);
        console.log(`Time Difference: ${now.diff(otpSentAt, 'minutes')} minutes`);
        // Check if the OTP has expired
        if (now.diff(otpSentAt) > otpValidFor.asMilliseconds()) {
            return res.status(400).json({ error: 'OTP has expired' });
        }
        // Mark OTP as used (inactive) by updating the timestamp
        const queryString = 'UPDATE tbappuser SET updated_date = ? WHERE email = ?';
        await pool.query(queryString, [now.format('YYYY-MM-DD HH:mm:ss'), email]);
        return res.status(200).json({ message: 'OTP verified successfully' });
    } catch (error) {
        console.error('Error verifying OTP:', error);
        return res.status(500).json({ error: 'Internal server error' });
    }
};

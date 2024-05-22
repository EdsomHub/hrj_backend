const Login = require("../models/login");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const pool = require('../db');
const loginController = {
login: async (req, res) => {
  const { mobile_number } = req.body;
  if (!mobile_number) {
    return res.status(400).json({ error: "Mobile number is required" });
  }
  try {
    // Check if the user exists in the database
    pool.query('SELECT * FROM tbappuser WHERE mobile_number = ?', [mobile_number], (error, results) => {
      if (error) {
        console.error("Error logging in:", error);
        return res.status(500).json({ error: "Internal server error" });
      }
      if (results.length === 0) {
        return res.status(401).json({ error: "User not found" });
      }
      const user = results[0];
      // Generate JWT token if user exists
      const token = jwt.sign({ mobile_number: user.mobile_number }, process.env.JWT_SECRET, { expiresIn: "1d" });
      res.json({ message: "Login successful", token });
    });
  } catch (error) {
    console.error("Error logging in:", error);
    res.status(500).json({ error: "Internal server error" });
  }
},
register: async (req, res) => {
  const { mobile_number } = req.body;
  if (!mobile_number) {
    return res.status(400).json({ error: "Mobile number is required" });
  }
  try {
    // Check if the user already exists in the database
    pool.query('SELECT * FROM tbappuser WHERE mobile_number = ?', [mobile_number], (error, results) => {
      if (error) {
        console.error("Error registering user:", error);
        return res.status(500).json({ error: "Internal server error" });
      }
      if (results.length > 0) {
        return res.status(400).json({ error: "User already exists" });
      }
      // Insert a new user into the database
      pool.query('INSERT INTO tbappuser (mobile_number) VALUES (?)', [mobile_number], (error, result) => {
        if (error) {
          console.error("Error registering user:", error);
          return res.status(500).json({ error: "Internal server error" });
        }
        res.status(201).json({ message: "User registered successfully" });
      });
    });
  } catch (error) {
    console.error("Error registering user:", error);
    res.status(500).json({ error: "Internal server error" });
  }
},
logout: async (req, res) => {
  // Clear the JWT token from client-side (e.g., delete cookie or remove from local storage)
  res.json({ message: "Logout successful" });
}
};
module.exports = loginController;
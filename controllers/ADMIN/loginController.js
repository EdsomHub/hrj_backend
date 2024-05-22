const Login = require("../../models/login");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

exports.login = async (req, res) => {
  const { mobile_number } = req.body;

  if (!mobile_number) {
    return res.status(400).json({ error: "Mobile number is required" });
  }

  try {
    const user = await Login.getByMobileNumber(mobile_number);
    if (!user) {
      return res.status(401).json({ error: "User not found" });
    }

    // Generate JWT token if user exists
    const token = jwt.sign({ mobile_number: user.mobile_number }, process.env.JWT_SECRET, { expiresIn: "1d" });
    res.json({ message: "Login successful", token });
  } catch (error) {
    console.error("Error logging in:", error);
    res.status(500).json({ error: "Internal server error" });
  }
};

exports.register = async (req, res) => {
  const { mobile_number } = req.body;

  if (!mobile_number) {
    return res.status(400).json({ error: "Mobile number is required" });
  }

  try {
    // Check if the user already exists
    const existingUser = await Login.getByMobileNumber(mobile_number);
    if (existingUser) {
      return res.status(400).json({ error: "User already exists" });
    }

    // Create a new user
    await Login.create(mobile_number);
    res.status(201).json({ message: "User registered successfully" });
  } catch (error) {
    console.error("Error registering user:", error);
    res.status(500).json({ error: "Internal server error" });
  }
};

exports.logout = async (req, res) => {
  // Clear the JWT token from client-side (e.g., delete cookie or remove from local storage)
  res.json({ message: "Logout successful" });
};

const pool = require("../db");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
exports.signin = async (req, res) => {
  const { username, password } = req.body;
  if (!username || !password) {
    return res
      .status(400)
      .json({ error: "Username and password are required" });
  }
  try {
    // Check if the user exists in the database
    const sql = `SELECT * FROM User_Table WHERE username = ?`;
    pool.query(sql, [username], async (err, results) => {
      if (err) {
        console.error("Error signing in:", err);
        return res.status(500).json({ error: "Internal server error" });
      }
      if (results.length === 0) {
        return res.status(401).json({ error: "Invalid username or password" });
      }
      const user = results[0];
      // Compare the password
      const match = await bcrypt.compare(password, user.password);
      if (match) {
        // Generate JWT token
        const token = jwt.sign(
          { _id: user.id, role: user.userType, name: user.username },
          process.env.JWT_SECRET,
          { expiresIn: "1d" }
        );
        res.json({ message: "Sign in successful", user, token });
        console.log(token);
      } else {
        res.status(401).json({ error: "Invalid username or password" });
      }
    });
  } catch (error) {
    console.error("Error signing in:", error);
    res.status(500).json({ error: "Internal server error" });
  }
};
exports.signup = async (req, res) => {
  // Signup logic remains the same
  // ...
  const {
    username,
    password,
    isActive,
    userType,
    createdBy,
    createdDate,
    updatedBy,
    updatedDate,
  } = req.body;
  if (!username || !password) {
    return res
      .status(400)
      .json({ error: "Username and password are required" });
  }
  try {
    // Check if the username already exists
    const sqlCheckUsername = `SELECT * FROM User_Table WHERE username = ?`;
    pool.query(sqlCheckUsername, [username], async (err, results) => {
      if (err) {
        console.error("Error checking username:", err);
        return res.status(500).json({ error: "Internal server error" });
      }
      if (results.length > 0) {
        return res.status(400).json({ error: "Username already exists" });
      }
      // Hash the password
      const saltRounds = 10;
      const hashedPassword = await bcrypt.hash(password, saltRounds);
      // Insert the new user into the database
      const sqlInsertUser = `INSERT INTO User_Table (username, password, isActive, userType, createdBy, createdDate, updatedBy, updatedDate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;
      pool.query(
        sqlInsertUser,
        [
          username,
          hashedPassword,
          isActive,
          userType,
          createdBy,
          createdDate,
          updatedBy,
          updatedDate,
        ],
        (err, result) => {
          if (err) {
            console.error("Error creating user:", err);
            return res.status(500).json({ error: "Internal server error" });
          }
          const newUser = { id: result.insertId, username };
          res.json({ message: "User created successfully", user: newUser });
        }
      );
    });
  } catch (error) {
    console.error("Error signing up:", error);
    res.status(500).json({ error: "Internal server error" });
  }
};
exports.getUserTypes = async (req, res) => {
  try {
    // Extract user type from decoded token
    const userType = req.user.role;
    // Query to select distinct user types from user_table for the specific user type
    const sql = `SELECT DISTINCT userType FROM user_table WHERE userType = ?`;
    pool.query(sql, [userType], (err, results) => {
      if (err) {
        console.error("Error fetching user types:", err);
        return res.status(500).json({ error: "Internal server error" });
      }
      // Extract user types from results
      const userTypes = results.map((result) => result.userType);
      res.json(userTypes);
    });
  } catch (error) {
    console.error("Error fetching user types:", error);
    res.status(500).json({ error: "Internal server error" });
  }
};

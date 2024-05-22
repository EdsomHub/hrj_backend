// routes/authRoutes.js

const express = require("express");
const router = express.Router();
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const {
  getUserByEmail,
  createUser,
  getAllUsersForAdmin,
  getUserById,
  getUserById1,
  getAllCpForAdmin,
  getAllSdForAdmin,
  getAllMdForAdmin,
  getAllDForAdmin,
  getAllRForAdmin,
  getUserTransactions,
  getUserTransactionsWithParent
} = require("../models/dbOperations");

// Route for user registration
router.post("/register", async (req, res) => {
  try {
    const {
      name,
      email,
      password,
      user_Type,
      category,
      middleName,
      lastName,
      mobileNumber,
      outletName,
      aadharcardNumber,
      gstin,
      dateOfBirth,
      bankAccountNumber,
      ifsc,
      address,
      pincode,
      district,
      state,
      city,
      alternateNumber,
      pancardNumber,
      commissionSurcharge,
      percentage
    } = req.body;
    console.log(req.body)

    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix
    console.log(token);
    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const parentId = decodedToken.userId;
    console.log(parentId)

    // Check if user already exists with the provided email
    const existingUser = await getUserByEmail(email);
    if (existingUser) {
      return res
        .status(400)
        .json({ message: "User already exists with the provided email" });
    }
    console.log(user_Type);
    // Create new user
    await createUser(
      name,
      email,
      password,
      user_Type,
      parentId,
      category,
      middleName,
      lastName,
      mobileNumber,
      outletName,
      aadharcardNumber,
      gstin,
      dateOfBirth,
      bankAccountNumber,
      ifsc,
      address,
      pincode,
      district,
      state,
      city,
      alternateNumber,
      pancardNumber,
      commissionSurcharge,
      percentage
    );

    res.status(201).json({ message: "User registered successfully" });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

router.post("/signin", async (req, res) => {
  const { user_id, password } = req.body;
  try {
    // Retrieve user from the database based on userId
    const user = await getUserById(user_id);
    if (!user) {
      return res.status(404).json({ message: "User not found" });
    }
    

    // Compare password with hashed password in the database
    const validPassword = await bcrypt.compare(password, user.password);
    if (!validPassword) {
      return res.status(401).json({ message: "Invalid password" });
    }
    // Generate JWT token
    const token = jwt.sign({ userId: user.user_id }, process.env.JWT_SECRET, {
      expiresIn: "1h",
    });

    // res.json({ user, token });
    res.json({ message: "Sign in successful", user, token });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

router.get("/fetch-hierarchical-data", async (req, res) => {
  console.log("here")
  try {
   // const { user_id } = req.query;
    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix

    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;
    console.log(userId);
    // Check if the user is an Admin
    const users = await getUserById1(userId);
    // if (user.user_type !== "Admin") {
    //   return res.status(403).json({
    //     message:
    //       "Unauthorized access. Only Admin users are permitted to use this functionality.",
    //   });
    // }

    // Get all users for Admin
    //const users = await getAllUsersForAdmin();

    res.json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

router.get("/my-transactions",async (req, res) => {
  try {
    //const userId = req.params.userId;
      console.log("jnhdsiu");
    //const { utype } = "Channel_Partner";

    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix


    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;



    const user = await getUserTransactions(userId);
    res.json(user);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

//////////////////////WITHtRANSACTION////////////////////////////////////////////////////////////////////////////////////////////////

router.get("/transactionsWithParent",async (req, res) => {
  try {
    //const userId = req.params.userId;
      console.log("jnhdsiu");
    //const { utype } = "Channel_Partner";

    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix


    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;



    const user = await  getUserTransactionsWithParent(userId);
    res.json(user);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});





//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


















// Route to get all users for Admin
router.get("/adminusers", async (req, res) => {
  try {
    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix

    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;

    // Check if the user is an Admin
    const user = await getUserById(userId);
    if (user.user_type !== "Admin") {
      return res.status(403).json({
        message:
          "Unauthorized access. Only Admin users are permitted to use this functionality.",
      });
    }

    // Get all users for Admin
    const users = await getAllUsersForAdmin();

    res.json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

// Route to get all Channel Partners from the whole database
router.get("/admincps", async (req, res) => {
  try {
    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix

    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;

    // Check if the user is an Admin
    const user = await getUserById(userId);
    if (user.user_type !== "Admin") {
      return res.status(403).json({
        message:
          "Unauthorized access. Only Admin users are permitted to use this functionality.",
      });
    }

    // Get all users for Admin
    const users = await getAllCpForAdmin();

    res.json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});
// Route to get all Super Distributors from the whole database
router.get("/adminsds", async (req, res) => {
  try {
    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix

    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;

    // Check if the user is an Admin
    const user = await getUserById(userId);
    if (user.user_type !== "Admin") {
      return res.status(403).json({
        message:
          "Unauthorized access. Only Admin users are permitted to use this functionality.",
      });
    }

    // Get all users for Admin
    const users = await getAllSdForAdmin();

    res.json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});
// Route to get all Master Distributors from the whole database
router.get("/adminmds", async (req, res) => {
  try {
    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix

    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;

    // Check if the user is an Admin
    const user = await getUserById(userId);
    if (user.user_type !== "Admin") {
      return res.status(403).json({
        message:
          "Unauthorized access. Only Admin users are permitted to use this functionality.",
      });
    }

    // Get all users for Admin
    const users = await getAllMdForAdmin();

    res.json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});
// Route to get all Distributors from the whole database
router.get("/adminds", async (req, res) => {
  try {
    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix

    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;

    // Check if the user is an Admin
    const user = await getUserById(userId);
    if (user.user_type !== "Admin") {
      return res.status(403).json({
        message:
          "Unauthorized access. Only Admin users are permitted to use this functionality.",
      });
    }

    // Get all users for Admin
    const users = await getAllDForAdmin();

    res.json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});
// Route to get all Retailers from the whole database
router.get("/adminrs", async (req, res) => {
  try {
    const token = req.headers.authorization; // Token sent directly without "Bearer " prefix

    const decodedToken = jwt.verify(token, process.env.JWT_SECRET);
    const userId = decodedToken.userId;

    // Check if the user is an Admin
    const user = await getUserById(userId);
    if (user.user_type !== "Admin") {
      return res.status(403).json({
        message:
          "Unauthorized access. Only Admin users are permitted to use this functionality.",
      });
    }

    // Get all users for Admin
    const users = await getAllRForAdmin();

    res.json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal server error" });
  }
});

module.exports = router;

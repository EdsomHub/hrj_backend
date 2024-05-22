const express = require("express");
const axios = require("axios").default;
const { URLSearchParams } = require("url");
const crypto = require("crypto");
const app = express();
const cors = require("cors");
require("dotenv").config();
const cookieParser = require("cookie-parser");
const pool = require('./db'); // Import the pool

// ROUTES
const mpinRoutes = require("./routes/mpinRoutes.js");
const authRoutes1 = require("./routes/router.js");
const authRoutes = require("./routes/authRoutes.js");
const protectedRoutes = require("./routes/protected.js");

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.use(cookieParser());

const corsOptions = {
  origin: 'https://ipaisa.site',
  methods: 'GET,POST',
  allowedHeaders: 'Content-Type,Authorization',
  optionsSuccessStatus: 200
};
app.use(cors(corsOptions));

app.get("/", (req, res) => {
  const authorInfo = "<div style='text-align: center;'><h2 style='font-family: Times New Roman, serif; font-style: italic;'>📝 Author: Edsom 😊🎉</h2></div>";
  const message = "<div style='text-align: center;'><h1>🌐✨ WELCOME TO OUR BACKEND SERVER! <br>🚀 WE'VE UPGRADED OUR PLATFORMS TO INCLUDE API SERVICES, PAYMENT GATEWAY <br>&<br> TRANSACTION API V2. LET'S ENSURE SEAMLESS SERVICES & TRANSACTIONS! 💳🔒</h1></div>";
  const responseMessage = `${message}<br><br>${authorInfo}`;
  res.send(responseMessage);
});

const key = 'SFUO1PXTNT';
const salt = '8L8Q47OKS8';

function generateHash(txnid, amount, productinfo, firstname, email, udf1, udf2) {
  const inputString = key + "|" + txnid + "|" + amount + "|" + productinfo + "|" + firstname + "|" + email + "|" + udf1 + "|" + udf2 + "|" + "|" + "|" + "|" + "|" + "|" + "|" + "|" + "|" + salt;
  const encryptedString = crypto.createHash("sha512");
  encryptedString.update(inputString, "utf-8");
  return encryptedString.digest("hex");
}

function createParams(txnid, amount, productinfo, firstname, phone, email, surl, furl, udf1, udf2, hash) {
  const params = new URLSearchParams();
  params.append("key", key);
  params.append("txnid", txnid);
  params.append("amount", amount);
  params.append("productinfo", productinfo);
  params.append("firstname", firstname);
  params.append("phone", phone);
  params.append("email", email);
  params.append("surl", surl);
  params.append("furl", furl);
  params.append("udf1", udf1);
  params.append("udf2", udf2);
  params.append("hash", hash);
  return params;
}

app.post("/initiate-payment", async (req, res) => {
  try {
    const { txnid, amount, productinfo, firstname, phone, email, surl, furl, udf1, udf2 } = req.body;
    const hash = generateHash(txnid, amount, productinfo, firstname, email, udf1, udf2);
    console.log(hash);
    const params = createParams(txnid, amount, productinfo, firstname, phone, email, surl, furl, udf1, udf2, hash);
    const response = await axios.post("https://pay.easebuzz.in/payment/initiateLink", params, {
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
        Accept: "application/json",
      },
    });
    res.json(response.data);
  } catch (error) {
    console.error("Error initiating payment:", error.message);
    res.status(500).json({ status: 0, message: "Error initiating payment" });
  }
});

app.post("/initiate-web-payment", async (req, res) => {
  try {
    const { txnid, amount, productinfo, firstname, phone, email, surl, furl } = req.body;
    const hash = generateHash(txnid, amount, productinfo, firstname, email);
    const params = createParams(txnid, amount, productinfo, firstname, phone, email, surl, furl, hash);
    const response = await axios.post("https://pay.easebuzz.in/payment/initiateLink", params, {
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
        Accept: "application/json",
      },
    });
    const accessKey = response.data.data;
    const paymentGatewayURL = `https://pay.easebuzz.in/pay/${accessKey}`;
    res.redirect(paymentGatewayURL);
  } catch (error) {
    console.error("Error initiating payment:", error.message);
    res.status(500).json({ status: 0, message: "Error initiating payment" });
  }
});


app.post('/transaction-api-v2', async (req, res) => {
  try {
    const { txnid } = req.body;
    const inputString = key + "|" + txnid + "|" + salt;
    const encryptedString = crypto.createHash('sha512');
    encryptedString.update(inputString, 'utf-8');
    const hash = encryptedString.digest('hex');
    const params = new URLSearchParams();
    params.append('txnid', txnid);
    params.append('key', key);
    params.append('hash', hash);
    const response = await axios.post('https://dashboard.easebuzz.in/transaction/v2/retrieve', params, {
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json'
      }
    });
    res.json(response.data);
  } catch (error) {
    console.error('Error initiating payment:', error.message);
    res.status(500).json({ status: 0, message: 'Error initiating payment' });
  }
});


app.post('/api/check-user', async (req, res) => {
  const { mobile_number, name } = req.body;

  if (!mobile_number || !name) {
    return res.status(400).json({ error: 'Mobile number and name are required' });
  }

  try {
    const [results] = await pool.query('SELECT * FROM users WHERE mobile_number = ? AND name = ?', [mobile_number, name]);
    if (results.length > 0) {
      res.status(200).json({ message: 'User exists' });
    } else {
      res.status(404).json({ error: 'User not found' });
    }
  } catch (error) {
    console.error('Database query error:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   const { phone, otp } = req.body;

//   // Implement the storage of OTPs and verification logic here
//   // For now, assuming `otpStore` is an object storing OTPs with phone numbers as keys
//   if (otpStore[phone] && otpStore[phone] === otp) {
//     delete otpStore[phone];
//     res.status(200).json({ valid: true });
//   } else {
//     res.status(400).json({ valid: false });
//   }
// });

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
app.use("/api", authRoutes1);
app.use("/api/mpin", mpinRoutes);
app.use('/api/auth', authRoutes);
app.use('/api/protected', protectedRoutes);
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

app.get('/trigger-rockkpay', (req, res) => {
  const { amount, userName, userMobile, retailerEmail, retailerMobile } = req.query; // Get the amount from the query parameters
  console.log(amount,"this is amount");
  if (!amount) {
    return res.status(400).send('<h1>Invalid Parameters</h1>');
  }

  const parsedAmount = parseFloat(amount); // Convert the input to a number

  if (isNaN(parsedAmount)) {
    return res.status(400).send('<h1>Invalid amount</h1>');
  }

  // Step 4: Apply a 2% surcharge
  const surchargeRate = 0.02;
  const surchargedAmount = parsedAmount * (1 + surchargeRate);
console.log(surchargedAmount,"surcharged amount");
  // Step 5: Create a deep link with the surcharged amount
  const deepLink = `rockkpay://deepLink?amount=${surchargedAmount.toFixed(2)}&userName=${encodeURIComponent(userName)}&userMobile=${encodeURIComponent(userMobile)}&retailerEmail=${encodeURIComponent(retailerEmail)}&retailerMobile=${encodeURIComponent(retailerMobile)}`;
  // const deepLink = `app://deepLink`;

  // Respond with an HTML page that redirects to the deep link
  res.send(`
    <html>
      <head>
        <title>Redirecting...</title>
        <meta http-equiv="refresh" content="0;url=${deepLink}">
      </head>
      <body>
        <h1>Redirecting to rockkpay...</h1>
        <script>
          <a href="${deepLink}"/>
        </script>
      </body>
    </html>
  `);
});


const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});








// /*
// Author: Harsh Jarare
// Date: 17/04/2024
// Description: This Express.js application facilitates backend API services, payment initiation and transaction retrieval using the Easebuzz payment gateway API. It includes endpoints for internal APIs & 3rd party APIs with initiating payments for both Android and web platforms, as well as a POST endpoints for storing & retrieving user related data & transaction details via the Transaction API V2. The code implements cryptographic hashing for secure transactions, integrates axios for HTTP requests, and employs CORS middleware for cross-origin resource sharing. The server listens on port 5000.
// Technologies Used: Express.js, Axios, Crypto, CORS
// Middleware: JSON and URL-encoded body parsing, CORS, JWT Token Verification
// Port: 5000
// */

// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// const express = require("express");
// const axios = require("axios").default;
// const { URLSearchParams } = require("url");
// const crypto = require("crypto");
// const app = express();
// const cors = require("cors");
// require("dotenv").config();
// require("./db.js");
// const cookieParser = require("cookie-parser");
// const pool = require("./db")

// // ROUTES /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// const mpinRoutes = require("./routes/mpinRoutes.js");
// const authRoutes1 = require("./routes/router.js");
// const authRoutes = require('./routes/authRoutes.js');
// const protectedRoutes = require('./routes/protected.js');
// ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// app.use(express.json());
// app.use(express.urlencoded({ extended: true }));
// app.use(cors());
// app.use(cookieParser());

// // /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// // // Customized CORS options (optional):
// const corsOptions = {
//   origin: 'https://ipaisa.site', // Allow requests from only from this specific origin
//   methods: 'GET,POST', // Allow only specified HTTP methods
//   allowedHeaders: 'Content-Type,Authorization', // Allow only specified headers
//   optionsSuccessStatus: 200 // Some legacy browsers (IE11, various SmartTVs) choke on 204
// };
// app.use(cors(corsOptions));
// // //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // STARTING POINT OF THE BACKEND ////////////////////////////////////////////////////////////////////////////////////////////
// app.get("/", (req, res) => {
//   const authorInfo = "<div style='text-align: center;'><h2 style='font-family: Times New Roman, serif; font-style: italic;'>📝 Author: Edsom 😊🎉</h2></div>";
//   const message = "<div style='text-align: center;'><h1>🌐✨ WELCOME TO OUR BACKEND SERVER! <br>🚀 WE'VE UPGRADED OUR PLATFORMS TO INCLUDE API SERVICES, PAYMENT GATEWAY <br>&<br> TRANSACTION API V2. LET'S ENSURE SEAMLESS SERVICES & TRANSACTIONS! 💳🔒</h1></div>";
//   const responseMessage = `${message}<br><br>${authorInfo}`;
//   res.send(responseMessage);
// });
// /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // PRODUCTION API KEY & SALT FOR EASEBUZZ PAYMENT GATEWAY ////////////////////////////////////////////////////////////////////
// const key = 'SFUO1PXTNT';
// const salt = '8L8Q47OKS8';
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // FUNCTION TO GENERATE 'HASH' FOR PAYMENT INITIATION ////////////////////////////////////////////////////////////////////////
// function generateHash(txnid, amount, productinfo, firstname, email) {

// const inputString = key + "|" + txnid + "|" + amount + "|" + productinfo + "|" + firstname + "|" + email + "|" + "|" + "|" + "|" + "|" + "|" + "|" + "|" + "|" + "|" + "|" + salt;
//   const encryptedString = crypto.createHash("sha512");
//   encryptedString.update(inputString, "utf-8");
//   return encryptedString.digest("hex");
// }
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // FUNCTION TO CREATE 'URLSearchParams' OBJECT FOR PAYMENT INITIATION ////////////////////////////////////////////////////////
// function createParams(txnid, amount, productinfo, firstname, phone, email, surl, furl, hash) {
//   const params = new URLSearchParams();
//   params.append("key", key);
//   params.append("txnid", txnid);
//   params.append("amount", amount);
//   params.append("productinfo", productinfo);
//   params.append("firstname", firstname);
//   params.append("phone", phone);
//   params.append("email", email);
//   params.append("surl", surl);
//   params.append("furl", furl);
//   params.append("hash", hash);
//   return params;
// }
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // POST ENDPOINT FOR INITIATING PAYMENT FOR ANDROID //////////////////////////////////////////////////////////////////////////
// app.post("/initiate-payment", async (req, res) => {
//   try {
//     const { txnid, amount, productinfo, firstname, phone, email, surl, furl } = req.body;
//     const hash = generateHash(txnid, amount, productinfo, firstname, email);
//     console.log(hash);
//     const params = createParams(txnid, amount, productinfo, firstname, phone, email, surl, furl, hash);
//     const response = await axios.post("https://pay.easebuzz.in/payment/initiateLink", params, {
//       headers: {
//         "Content-Type": "application/x-www-form-urlencoded",
//         Accept: "application/json",
//       },
//     });
//     res.json(response.data);
//   } catch (error) {
//     console.error("Error initiating payment:", error.message);
//     res.status(500).json({ status: 0, message: "Error initiating payment" });
//   }
// });
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // POST ENDPOINT FOR INITIATING PAYMENT FOR WEB //////////////////////////////////////////////////////////////////////////////
// app.post("/initiate-web-payment", async (req, res) => {
//   try {
//     const { txnid, amount, productinfo, firstname, phone, email, surl, furl } = req.body;
//     const hash = generateHash(txnid, amount, productinfo, firstname, email);
//     const params = createParams(txnid, amount, productinfo, firstname, phone, email, surl, furl, hash);
//     const response = await axios.post("https://pay.easebuzz.in/payment/initiateLink", params, {
//       headers: {
//         "Content-Type": "application/x-www-form-urlencoded",
//         Accept: "application/json",
//       },
//     });
//     const accessKey = response.data.data;
//     const paymentGatewayURL = `https://pay.easebuzz.in/pay/${accessKey}`;
//     res.redirect(paymentGatewayURL);
//   } catch (error) {
//     console.error("Error initiating payment:", error.message);
//     res.status(500).json({ status: 0, message: "Error initiating payment" });
//   }
// });
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // POST ENDPOINT FOR Transaction API V2 ///////////////////////////////////////////////////////////////////////////////////////
// app.post('/transaction-api-v2', async (req, res) => {
//   try {
//     const { txnid } = req.body;
//     const inputString = key + "|" + txnid + "|" + salt;
//     const encryptedString = crypto.createHash('sha512');
//     encryptedString.update(inputString, 'utf-8');
//     const hash = encryptedString.digest('hex');
//     const params = new URLSearchParams();
//     params.append('txnid', txnid);
//     params.append('key', key);
//     params.append('hash', hash);
//     const response = await axios.post('https://dashboard.easebuzz.in/transaction/v2/retrieve', params, {
//       headers: {
//         'Content-Type': 'application/x-www-form-urlencoded',
//         'Accept': 'application/json'
//       }
//     });
//     res.json(response.data);
//   } catch (error) {
//     console.error('Error initiating payment:', error.message);
//     res.status(500).json({ status: 0, message: 'Error initiating payment' });
//   }
// });
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // MOBILE APP OTP FUNCTIONALITY ////////////////////////////////////////////////////////////////////////////////////////////////
// app.post("/generate-otp", (req, res) => {
//   // Generate a random 6-digit OTP
//   const otp = Math.floor(100000 + Math.random() * 900000);

//   res.status(200).json({ otp });
// });
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// app.post("/send-otp", (req, res) => {
//   const { mobile_number } = req.body;

//   // Generate a random OTP
//   const otp = Math.floor(100000 + Math.random() * 900000);

//   // Compose the message to send
//   let msg = `Your one-time password (OTP) to proceed on iPaisa is ${otp}. `;
//   msg += "This OTP is valid for 5 minutes. Remember, never share your OTP with anyone for security reasons. ";
//   msg += "Thank you, Team iPaisa - Edsom Fintech";

//   // Construct the URL for the API call
//   let otpApi = `http://sms.hspsms.com/sendSMS?username=ramkumar.ramdhani9@gmail.com&message=${msg}&sendername=IPESSA&smstype=TRANS&numbers=${mobile_number}&apikey=503c34a4-c484-4d6e-8f55-bf7102c71242`;

//   console.log(otpApi);
//   // Redirect to the API endpoint for sending the SMS
//   res.redirect(otpApi);
  
//   // Respond with a status 200 and the generated OTP
//   //res.status(200).json({ otp });
// });
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// app.post('/api/check-user', (req, res) => {
//   const { mobile_number, name } = req.body;

//   if (!mobile_number || !name) {
//     return res.status(400).json({ error: 'Mobile number and name are required' });
//   }

//   pool.getConnection((err, connection) => {
//     if (err) {
//       console.error('Error connecting to the database:', err);
//       return res.status(500).json({ error: 'Internal server error' });
//     }

//     const query = 'SELECT * FROM users WHERE mobile_number = ? AND name = ?';
//     connection.query(query, [mobile_number, name], (error, results) => {
//       connection.release(); // Always release the connection back to the pool

//       if (error) {
//         console.error('Database query error:', error);
//         return res.status(500).json({ error: 'Internal server error' });
//       }

//       if (results.length > 0) {
//         res.status(200).json({ message: 'User exists' });
//       } else {
//         res.status(404).json({ error: 'User not found' });
//       }
//     });
//   });
// });

// app.post("/verify-otp", (req, res) => {
//   const { phone, otp } = req.body;

//   // Implement the storage of OTPs and verification logic here
//   // For now, assuming `otpStore` is an object storing OTPs with phone numbers as keys
//   if (otpStore[phone] && otpStore[phone] === otp) {
//     // If OTP is valid, clear the stored OTP and respond with success
//     delete otpStore[phone];
//     res.status(200).json({ valid: true });
//   } else {
//     // If OTP is invalid, respond with error
//     res.status(400).json({ valid: false });
//   }
// });
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // MOUNTING ROUTES /////////////////////////////////////////////////////////////////////////////////////////////////////////////
// app.use("/api", authRoutes1);
// app.use("/api/mpin", mpinRoutes);
// app.use('/api/auth', authRoutes);
// app.use('/api/protected', protectedRoutes);
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // PORT CONFIGURATION //////////////////////////////////////////////////////////////////////////////////////////////////////////
// const port = process.env.PORT || 3000;
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// // STARTING THE SERVER /////////////////////////////////////////////////////////////////////////////////////////////////////////
// app.listen(port, () => {
//   console.log(`Server is running on http://localhost:${port}`);
// });
// /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
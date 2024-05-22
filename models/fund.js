const pool = require("../db");
// Function to transfer funds from sender to receiver
exports.transferFunds = (senderId, receiverId, amount, callback) => {
  // Query to update sender and receiver balances
  // const updateSenderBalanceQuery = `UPDATE fundusers SET balance = balance - ? WHERE id = ?`;
  // const updateReceiverBalanceQuery = `UPDATE fundusers SET balance = balance + ? WHERE id = ?`;
  //user_table
  const updateSenderBalanceQuery = `UPDATE user_table SET vmbalance = vmbalance - ? WHERE id = ?`;
  // const updateReceiverBalanceQuery = `UPDATE user_table SET vwbalance = vwbalance + ? WHERE id = ?`;
  const updateReceiverBalanceQuery = `UPDATE user_table SET vmbalance = vmbalance + ? WHERE id = ?`;
  // Query to insert a new transaction record
  const insertTransactionQuery = `INSERT INTO fundtransactions (sender_id, receiver_id, amount) VALUES (?, ?, ?)`;
  pool.getConnection((err, connection) => {
    if (err) {
      console.error("Error getting MySQL connection:", err);
      return callback(err);
    }
    connection.beginTransaction((err) => {
      if (err) {
        console.error("Error beginning MySQL transaction:", err);
        connection.release();
        return callback(err);
      }
      // Execute the queries in a transaction
      connection.query(updateSenderBalanceQuery, [amount, senderId], (err) => {
        if (err) {
          console.error("Error updating sender balance:", err);
          connection.rollback(() => {
            connection.release();
            return callback(err);
          });
        }
        connection.query(
          updateReceiverBalanceQuery,
          [amount, receiverId],
          (err) => {
            if (err) {
              console.error("Error updating receiver balance:", err);
              connection.rollback(() => {
                connection.release();
                return callback(err);
              });
            }
            connection.query(
              insertTransactionQuery,
              [senderId, receiverId, amount],
              (err) => {
                if (err) {
                  console.error("Error inserting transaction:", err);
                  connection.rollback(() => {
                    connection.release();
                    return callback(err);
                  });
                }
                connection.commit((err) => {
                  if (err) {
                    console.error("Error committing transaction:", err);
                    connection.rollback(() => {
                      connection.release();
                      return callback(err);
                    });
                  }
                  // Release the connection
                  connection.release();
                  return callback(null);
                });
              }
            );
          }
        );
      });
    });
  });
};

// const pool = require("../db");

// // Function to transfer funds from sender to receiver
// exports.transferFunds = (senderId, receiverId, amount, callback) => {
//   // Query to update sender and receiver balances
//   const updateSenderBalanceQuery = `UPDATE fundusers SET balance = balance - ? WHERE id = ?`;
//   const updateReceiverBalanceQuery = `UPDATE fundusers SET balance = balance + ? WHERE id = ?`;
//   // Query to insert a new transaction record
//   const insertTransactionQuery = `INSERT INTO fundtransactions (sender_id, receiver_id, amount) VALUES (?, ?, ?)`;

//   pool.getConnection((err, connection) => {
//     if (err) {
//       console.error("Error getting MySQL connection:", err);
//       return callback(err);
//     }

//     connection.beginTransaction((err) => {
//       if (err) {
//         console.error("Error beginning MySQL transaction:", err);
//         connection.release();
//         return callback(err);
//       }

//       // Execute the queries in a transaction
//       connection.query(updateSenderBalanceQuery, [amount, senderId], (err) => {
//         if (err) {
//           console.error("Error updating sender balance:", err);
//           connection.rollback(() => {
//             connection.release();
//             return callback(err);
//           });
//         }

//         connection.query(
//           updateReceiverBalanceQuery,
//           [amount, receiverId],
//           (err) => {
//             if (err) {
//               console.error("Error updating receiver balance:", err);
//               connection.rollback(() => {
//                 connection.release();
//                 return callback(err);
//               });
//             }

//             connection.query(
//               insertTransactionQuery,
//               [senderId, receiverId, amount],
//               (err) => {
//                 if (err) {
//                   console.error("Error inserting transaction:", err);
//                   connection.rollback(() => {
//                     connection.release();
//                     return callback(err);
//                   });
//                 }

//                 connection.commit((err) => {
//                   if (err) {
//                     console.error("Error committing transaction:", err);
//                     connection.rollback(() => {
//                       connection.release();
//                       return callback(err);
//                     });
//                   }

//                   // Release the connection
//                   connection.release();
//                   return callback(null);
//                 });
//               }
//             );
//           }
//         );
//       });
//     });
//   });
// };

// const pool = require('../db');

// // Function to transfer funds from sender to receiver
// exports.transferFunds = (senderId, receiverId, amount, callback) => {
//     // Query to update sender and receiver balances
//     const updateSenderBalanceQuery = `UPDATE fundusers SET balance = balance - ? WHERE id = ?`;
//     const updateReceiverBalanceQuery = `UPDATE fundusers SET balance = balance + ? WHERE id = ?`;

//     pool.getConnection((err, connection) => {
//         if (err) {
//             console.error('Error getting MySQL connection:', err);
//             return callback(err);
//         }

//         connection.beginTransaction(err => {
//             if (err) {
//                 console.error('Error beginning MySQL transaction:', err);
//                 connection.release();
//                 return callback(err);
//             }

//             // Execute the queries in a transaction
//             connection.query(updateSenderBalanceQuery, [amount, senderId], err => {
//                 if (err) {
//                     console.error('Error updating sender balance:', err);
//                     connection.rollback(() => {
//                         connection.release();
//                         return callback(err);
//                     });
//                 }

//                 connection.query(updateReceiverBalanceQuery, [amount, receiverId], err => {
//                     if (err) {
//                         console.error('Error updating receiver balance:', err);
//                         connection.rollback(() => {
//                             connection.release();
//                             return callback(err);
//                         });
//                     }

//                     connection.commit(err => {
//                         if (err) {
//                             console.error('Error committing transaction:', err);
//                             connection.rollback(() => {
//                                 connection.release();
//                                 return callback(err);
//                             });
//                         }

//                         // Release the connection
//                         connection.release();
//                         return callback(null);
//                     });
//                 });
//             });
//         });
//     });
// };

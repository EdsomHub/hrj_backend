// paymenttransactions.js
const pool = require('../db');
class PaymentTransaction {
  static async create(paymentData) {
    try {
      const [results, fields] = await pool.query('INSERT INTO payment_transactions SET ?', paymentData);
      return results;
    } catch (error) {
      throw error;
    }
  }
  static async getAll() {
    try {
      const [results, fields] = await pool.query('SELECT * FROM payment_transactions');
      return results;
    } catch (error) {
      throw error;
    }
  }
}
module.exports = PaymentTransaction;
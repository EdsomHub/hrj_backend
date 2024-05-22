const PaymentTransaction = require('../models/paymenttransactions');
exports.savePayment = async (req, res) => {
  try {
    const { payment_response, result } = req.body; // Extracting payment_response and result from request body
    const paymentData = { ...payment_response, result }; // Combining payment_response and result
    await PaymentTransaction.create(paymentData);
    res.status(201).json({ message: 'Payment data saved successfully' });
  } catch (error) {
    console.error('Error saving payment:', error); // Log the error
    res.status(500).json({ error: 'Internal server error' });
  }
};
exports.getAllPayments = async (req, res) => {
  try {
    const payments = await PaymentTransaction.getAll();
    res.status(200).json(payments);
  } catch (error) {
    console.error('Error fetching payments:', error); // Log the error
    res.status(500).json({ error: 'Internal server error' });
  }
};
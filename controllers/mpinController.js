const Mpin = require("../models/mpin");

const mpinController = {
    // Create or Update M-PIN
    createOrUpdateMpin: async (req, res) => {
        const { mobile_number, mpin } = req.body;

        // Check input
        if (!mobile_number || !mpin) {
            return res.status(400).json({ error: "Mobile number and M-PIN are required" });
        }

        try {
            // Check if the M-PIN exists
            Mpin.getByMobileNumber(mobile_number, (error, existingMpin) => {
                if (error) {
                    console.error("Error getting M-PIN:", error);
                    return res.status(500).json({ error: "Internal server error" });
                }

                if (existingMpin) {
                    // Update existing M-PIN
                    Mpin.update(mobile_number, mpin, (error, success) => {
                        if (error) {
                            console.error("Error updating M-PIN:", error);
                            return res.status(500).json({ error: "Internal server error" });
                        }
                        if (success) {
                            return res.status(200).json({ message: "M-PIN updated successfully" });
                        } else {
                            return res.status(400).json({ error: "Failed to update M-PIN" });
                        }
                    });
                } else {
                    // Create new M-PIN
                    Mpin.create(mobile_number, mpin, (error, id) => {
                        if (error) {
                            console.error("Error creating M-PIN:", error);
                            return res.status(500).json({ error: "Internal server error" });
                        }
                        res.status(201).json({ message: "M-PIN created successfully", id });
                    });
                }
            });
        } catch (error) {
            console.error("Error handling M-PIN:", error);
            res.status(500).json({ error: "Internal server error" });
        }
    },

    // Fetch M-PIN
    getMpin: async (req, res) => {
        const { mobile_number } = req.params;

        if (!mobile_number) {
            return res.status(400).json({ error: "Mobile number is required" });
        }

        try {
            Mpin.getByMobileNumber(mobile_number, (error, mpinInstance) => {
                if (error) {
                    console.error("Error getting M-PIN:", error);
                    return res.status(500).json({ error: "Internal server error" });
                }
                if (!mpinInstance) {
                    return res.status(404).json({ error: "M-PIN not found" });
                }
                res.status(200).json({ mobile_number: mpinInstance.mobileNumber, mpin: mpinInstance.mpin });
            });
        } catch (error) {
            console.error("Error handling M-PIN:", error);
            res.status(500).json({ error: "Internal server error" });
        }
    },

    // Delete M-PIN
    deleteMpin: async (req, res) => {
        const { mobile_number } = req.params;

        if (!mobile_number) {
            return res.status(400).json({ error: "Mobile number is required" });
        }

        try {
            Mpin.delete(mobile_number, (error, success) => {
                if (error) {
                    console.error("Error deleting M-PIN:", error);
                    return res.status(500).json({ error: "Internal server error" });
                }
                if (success) {
                    res.status(200).json({ message: "M-PIN deleted successfully" });
                } else {
                    res.status(404).json({ error: "M-PIN not found" });
                }
            });
        } catch (error) {
            console.error("Error handling M-PIN:", error);
            res.status(500).json({ error: "Internal server error" });
        }
    }
};

module.exports = mpinController;

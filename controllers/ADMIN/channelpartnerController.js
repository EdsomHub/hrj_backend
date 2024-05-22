const ChnlPartnr = require("../../models/channelpartner");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

exports.getAllChannelPartners = (req, res) => {
  ChnlPartnr.getAll((err, channelPartners) => {
    if (err) {
      console.error("Error fetching channel partners:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.json(channelPartners);
  });
};

exports.getChannelPartnerById = (req, res) => {
  const id = req.params.id;
  ChnlPartnr.getById(id, (err, channelPartner) => {
    if (err) {
      console.error("Error fetching channel partner:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!channelPartner) {
      return res.status(404).json({ error: "Channel partner not found" });
    }
    res.json(channelPartner);
  });
};

exports.createChannelPartner = (req, res) => {
  const channelPartnerData = req.body;
  ChnlPartnr.create(channelPartnerData, (err, channelId) => {
    if (err) {
      console.error("Error creating channel partner:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.status(201).json({ message: "Channel partner created successfully", id: channelId });
  });
};

exports.updateChannelPartner = (req, res) => {
  const id = req.params.id;
  const channelPartnerData = req.body;
  ChnlPartnr.update(id, channelPartnerData, (err, success) => {
    if (err) {
      console.error("Error updating channel partner:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Channel partner not found" });
    }
    res.json({ message: "Channel partner updated successfully" });
  });
};

exports.deleteChannelPartner = (req, res) => {
  const id = req.params.id;
  ChnlPartnr.delete(id, (err, success) => {
    if (err) {
      console.error("Error deleting channel partner:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Channel partner not found" });
    }
    res.status(204).send(); // No content, as the resource is deleted
  });
};

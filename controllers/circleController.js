const Circle = require("../models/circle");

// Controller function to get all circles
exports.getAllCircles = (req, res) => {
  Circle.getAll((err, circles) => {
    if (err) {
      console.error("Error fetching circles:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.json(circles);
  });
};

// Controller function to get a circle by ID
exports.getCircleById = (req, res) => {
  const id = req.params.id;
  Circle.getById(id, (err, circle) => {
    if (err) {
      console.error("Error fetching circle:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!circle) {
      return res.status(404).json({ error: "Circle not found" });
    }
    res.json(circle);
  });
};

// Controller function to create a new circle
exports.createCircle = (req, res) => {
  const circleData = req.body;
  Circle.create(circleData, (err, circleId) => {
    if (err) {
      console.error("Error creating circle:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    res.status(201).json({ message: "Circle created successfully", id: circleId });
  });
};

// Controller function to update a circle
exports.updateCircle = (req, res) => {
  const id = req.params.id;
  const circleData = req.body;
  Circle.update(id, circleData, (err, success) => {
    if (err) {
      console.error("Error updating circle:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Circle not found" });
    }
    res.json({ message: "Circle updated successfully" });
  });
};

// Controller function to delete a circle
exports.deleteCircle = (req, res) => {
  const id = req.params.id;
  Circle.delete(id, (err, success) => {
    if (err) {
      console.error("Error deleting circle:", err);
      return res.status(500).json({ error: "Internal server error" });
    }
    if (!success) {
      return res.status(404).json({ error: "Circle not found" });
    }
    res.status(204).send(); // No content, as the resource is deleted
  });
};

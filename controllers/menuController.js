const Menu = require('../models/menu');

const menuController = {
  createMenu: (req, res) => {
    const menuData = req.body;
    Menu.createMenu(menuData, (err, menuId) => {
      if (err) {
        console.error('Error creating menu:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      res.status(201).json({ menuId });
    });
  },

  getMenuById: (req, res) => {
    const { id } = req.params;
    Menu.getMenuById(id, (err, menu) => {
      if (err) {
        console.error('Error fetching menu:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!menu) {
        return res.status(404).json({ error: 'Menu not found' });
      }
      res.json(menu);
    });
  },

  getAllMenus: (req, res) => {
    Menu.getAllMenus((err, menus) => {
      if (err) {
        console.error('Error fetching menus:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      res.json(menus);
    });
  },

  updateMenuById: (req, res) => {
    const { id } = req.params;
    const newData = req.body;
    Menu.updateMenuById(id, newData, (err, success) => {
      if (err) {
        console.error('Error updating menu:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Menu not found' });
      }
      res.json({ message: 'Menu updated successfully' });
    });
  },

  deleteMenuById: (req, res) => {
    const { id } = req.params;
    Menu.deleteMenuById(id, (err, success) => {
      if (err) {
        console.error('Error deleting menu:', err);
        return res.status(500).json({ error: 'Internal server error' });
      }
      if (!success) {
        return res.status(404).json({ error: 'Menu not found' });
      }
      res.json({ message: 'Menu deleted successfully' });
    });
  }
};

module.exports = menuController;

'use strict';
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Products', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      name: {
        type: Sequelize.STRING
      },
      price: {
        type: Sequelize.DECIMAL
      },
      stock: {
        type: Sequelize.INTEGER
      },
      stock_min: {
        type: Sequelize.INTEGER
      },
      stock_max: {
        type: Sequelize.INTEGER
      },
      description: {
        type: Sequelize.STRING
      },
      extended_description: {
        type: Sequelize.STRING
      },
      product_category: {
        type: Sequelize.STRING
      },
      categoryId: {
        allowNull:false,
        type: Sequelize.INTEGER,
        references:{
          model: 'categories',
          key: 'id'
        }
      },
      colorId: {
        allowNull:false,
        type: Sequelize.INTEGER,
        references:{
          model: 'colors',
          key: 'id'
        }
      },
      brandId: {
        allowNull:false,
        type: Sequelize.INTEGER,
        references:{
          model: 'brands',
          key: 'id'
        }
      },
      image: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Products');
  }
};
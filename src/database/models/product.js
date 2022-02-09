'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Product extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      Product.belongsTo(models.Category,{
        foreignKey:'categoryId',
        as:'category'
        
      })

      Product.belongsTo(models.Color, {
        foreignKey: 'colorId',
        as: 'color'
      });
        Product.belongsTo(models.Brand,{
            foreignKey:'brandId',
          as:'brand'
        
        })
    }
  }
  Product.init({
    name: DataTypes.STRING,
    price: DataTypes.DECIMAL,
    stock: DataTypes.INTEGER,
    stock_min: DataTypes.INTEGER,
    stock_max: DataTypes.INTEGER,
    description: DataTypes.STRING,
    extended_description: DataTypes.STRING,
    product_category: DataTypes.STRING,
    categorysId: DataTypes.INTEGER,
    colorsId: DataTypes.INTEGER,
    brandsId: DataTypes.INTEGER,
    image: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Product',
  });
  return Product;
};
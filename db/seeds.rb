# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = Product.create([
  { name: 'Hat 1', price: '100.00', size: 'large', product_type: 'cap', color: 'black', quantity: '10', material: 'cotton'},
  { name: 'Hat 2', price: '100.00', size: 'small', product_type: 'cap', color: 'yellow', quantity: '10', material: 'cotton'},
  { name: 'Shirt 1', price: '100.00', size: 'large', product_type: 'shirt', color: 'black', quantity: '10', material: 'cotton'},
  { name: 'Shirt 2', price: '100.00', size: 'medium', product_type: 'shirt', color: 'green', quantity: '10', material: 'cotton'},
  { name: 'Sweatshirt 1', price: '50.50', size: 'small', product_type: 'sweatshirt', color: 'blue', quantity: '10', material: 'cotton'},
  { name: 'Sweatshirt 2', price: '50.50', size: 'large', product_type: 'sweatshirt', color: 'teal', quantity: '10', material: 'cotton'},
  { name: 'Glove 1', price: '50.50', size: 'small', product_type: 'glove', color: 'black', quantity: '10', material: 'cotton'}, 
  { name: 'Glove 2', price: '50.50', size: 'xl', product_type: 'glove', color: 'green', quantity: '10', material: 'cotton'}
  ])
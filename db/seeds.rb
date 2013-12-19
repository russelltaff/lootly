Product.destroy_all

products = Product.create([  
  { name: 'Hat 1', image_filename: 'LootHat1.png', price: '100.00', size: 'large', product_type: 'cap', color: 'black', quantity: '10', material: 'cotton'},
  { name: 'Hat 2', image_filename: 'LootHat2.png', price: '100.00', size: 'small', product_type: 'cap', color: 'yellow', quantity: '10', material: 'cotton'},
  { name: 'Shirt 1', image_filename: 'LootShirt1.png', price: '100.00', size: 'large', product_type: 'shirt', color: 'black', quantity: '10', material: 'cotton'},
  { name: 'Shirt 2', image_filename: 'LootShirt2.png', price: '100.00', size: 'medium', product_type: 'shirt', color: 'green', quantity: '10', material: 'cotton'},
  { name: 'Sweatshirt 1', image_filename: 'LootSS1.png', price: '50.50', size: 'small', product_type: 'sweatshirt', color: 'blue', quantity: '10', material: 'cotton'},
  { name: 'Sweatshirt 2', image_filename: 'LootSS2.png', price: '50.50', size: 'large', product_type: 'sweatshirt', color: 'teal', quantity: '10', material: 'cotton'},
  { name: 'Glove 1', image_filename: 'LootGlove1.png', price: '50.50', size: 'small', product_type: 'glove', color: 'black', quantity: '10', material: 'cotton'}, 
  { name: 'Glove 2', image_filename: 'LootGlove2.png', price: '50.50', size: 'xl', product_type: 'glove', color: 'green', quantity: '10', material: 'cotton'}
  ])

Look.destroy_all

# looks = Look.create([
#   { name: 'Look 1'},
#   { name: 'Look 2'}

#   ])

# look_items = LookItem.create([
#   {product_id: '1', look_id: '1'},
#   {product_id: '3', look_id: '1'},
#   {product_id: '5', look_id: '1'},
#   {product_id: '7', look_id: '1'},
#   {product_id: '2', look_id: '2'},
#   {product_id: '4', look_id: '2'},
#   {product_id: '6', look_id: '2'},
#   {product_id: '8', look_id: '2'}
#   ])
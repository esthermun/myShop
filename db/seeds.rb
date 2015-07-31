# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Category.delete_all

Product.create(name: 'Candy', description: 'Sour pucker candy', price: '5.99', quantity: '5', active: '1', category_id: '1')
Product.create(name: 'Gum', description: 'Fruity that lasts long', price: '7.99', quantity: '10', active: '1', category_id: '1')
Product.create(name: 'Gourmet Chocolate', description: 'Handmade chocoloates', price: '12.99', quantity: '15', active: '1', category_id: '1')
Product.create(name: 'Water', description: 'Just plain tap water', price: '2.99', quantity: '20', active: '1', category_id: '2')
Product.create(name: 'Coke Zero', description: 'No calories!', price: '1.99', quantity: '7', active: '1', category_id: '2')
Product.create(name: 'Jelly Beans', description: 'Great flavors around. ', price: '25.50', quantity: '3', active: '1', category_id: '1')

Category.create(name: 'Treats', description: "Things you can munch away")
Category.create(name: 'Drinks', description: "Drinks for thirsty people")
Category.create(name: 'Other', description: "No description can be said..")




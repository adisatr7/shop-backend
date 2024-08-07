# typed: true
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create sellers
maria = User.create(name: 'Maria', email: 'maria@email.com', password: '', avatar_url: '')
jade = User.create(name: 'Jade', email: 'jade@email.com', password: '', avatar_url: '')
michael = User.create(name: 'Michael', email: 'michael@email.com', password: '', avatar_url: '')
jack = User.create(name: 'Jack', email: 'jack@email.com', password: '', avatar_url: '')
alice = User.create(name: 'Alice', email: 'alice@email.com', password: '', avatar_url: '')
bob = User.create(name: 'Bob', email: 'bob@email.com', password: '', avatar_url: '')

# Create customers
charlie = User.create(name: 'Charlie', email: 'charlie@email.com', password: '', avatar_url: '')
diana = User.create(name: 'Diana', email: 'diana@email.com', password: '', avatar_url: '')
edward = User.create(name: 'Edward', email: 'edward@email.com', password: '', avatar_url: '')
fiona = User.create(name: 'Fiona', email: 'fiona@email.com', password: '', avatar_url: '')

# Create items
item1 = Item.create(seller: maria, name: 'Apple iPhone 13', price: 999, desc: 'Latest model of Apple iPhone with 128GB storage')
item2 = Item.create(seller: jade, name: 'Samsung Galaxy S21', price: 799, desc: 'Samsung flagship phone with 256GB storage and 8GB RAM')
item3 = Item.create(seller: michael, name: 'Sony WH-1000XM4 Headphones', price: 349, desc: 'Noise-cancelling over-ear headphones with 30 hours battery life')
item4 = Item.create(seller: jack, name: 'Dell XPS 13 Laptop', price: 1199, desc: '13-inch laptop with Intel i7 processor, 16GB RAM, and 512GB SSD')
item5 = Item.create(seller: alice, name: 'Apple MacBook Pro', price: 1999, desc: '16-inch MacBook Pro with M1 chip, 16GB RAM, and 1TB SSD')
item6 = Item.create(seller: bob, name: 'Google Pixel 6', price: 699, desc: 'Google Pixel 6 with 128GB storage and 8GB RAM')
item7 = Item.create(seller: maria, name: 'Amazon Echo Dot', price: 49, desc: 'Smart speaker with Alexa')
item8 = Item.create(seller: jade, name: 'Fitbit Charge 5', price: 179, desc: 'Advanced fitness and health tracker with built-in GPS')

# Create item pics
pic1 = ItemPicture.create(item: item1, name: '', url: 'https://via.placeholder.com/150')
pic2 = ItemPicture.create(item: item2, name: '', url: 'https://via.placeholder.com/150')
pic3 = ItemPicture.create(item: item3, name: '', url: 'https://via.placeholder.com/150')
pic4 = ItemPicture.create(item: item4, name: '', url: 'https://via.placeholder.com/150')
pic5 = ItemPicture.create(item: item5, name: '', url: 'https://via.placeholder.com/150')
pic6 = ItemPicture.create(item: item6, name: '', url: 'https://via.placeholder.com/150')
pic7 = ItemPicture.create(item: item7, name: '', url: 'https://via.placeholder.com/150')
pic8 = ItemPicture.create(item: item8, name: '', url: 'https://via.placeholder.com/150')

# Create purchase histories
PurchaseHistory.create(item: item1, user: charlie)
PurchaseHistory.create(item: item2, user: diana)
PurchaseHistory.create(item: item3, user: edward)
PurchaseHistory.create(item: item4, user: fiona)
PurchaseHistory.create(item: item5, user: charlie)
PurchaseHistory.create(item: item6, user: diana)
PurchaseHistory.create(item: item7, user: edward)
PurchaseHistory.create(item: item8, user: fiona)
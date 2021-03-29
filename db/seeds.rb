# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
orders_string = File.open("#{Rails.root}/db/challenge_data/orders.json") { |f| f.read }
orders = JSON.parse(orders_string)
orders['RECORDS'].each do |single_order|
  Order.create(merchant_id: single_order['merchant_id'],
               shopper_id: single_order['shopper_id'],
               amount: single_order['amount'],
               created_at: single_order['created_at'],
               completed_at: single_order['completed_at'])
end
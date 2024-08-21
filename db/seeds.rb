# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating restaurants...'
da_mario = { name: 'Da Mario', address: '15 Gloucester Rd, London SW7 4PP', phone_number: '02075849078', category: 'italian' }
sumi = { name: 'Sumi', address: '157 Westbourne Grove, London W11 2RS', phone_number: '02045240880', category: 'japanese' }
gold_mine = { name: 'Gold Mine', address: '100-102 Queensway, London W2 3RR', phone_number: '02077928331', category: 'chinese' }
balthazar = { name: 'Balthazar', address: '4-6 Russell St, London WC2B 5HZ', phone_number: '02033011155', category: 'french' }
[da_mario, sumi, gold_mine, balthazar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'

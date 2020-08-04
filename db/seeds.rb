Review.delete_all
Restaurant.delete_all

10.times do 
categories = ["chinese", "italian", "japanese", "french", "belgian"]
restaurant = Restaurant.new(name: "Belladona", address: "Niceto 3388", phone_number: "4443-6765", category: categories.sample)
restaurant.reviews << Review.new(content: "Todo de 10", rating: 5)
restaurant.reviews << Review.new(content: "Los fideos con salsa son riquísimos", rating: 4)

restaurant.save

end

# require 'faker'

# Review.delete_all
# Restaurant.delete_all

# 10.times do 
# categories = ["chinese", "italian", "japanese", "french", "belgian"]
# restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: categories.sample)
# restaurant.save

# end
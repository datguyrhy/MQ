# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)
#
# Restaurant.create( :name => 'Weird Al Yankovich',:address =>'blk 123 @ Banana', :image_url => 'a', :minimum_spending =>'$12')
# Restaurant.create( :name => 'Feather Blade Steaks',:address =>'blk 85 @ Dempsey', :image_url => 'a', :minimum_spending =>'$18')
# Restaurant.create( :name => 'Pasta Mania',:address =>'85 East Coast', :image_url => 'a', :minimum_spending =>'$15')
# Restaurant.create( :name => 'Viet Express',:address =>'25 Ubi building', :image_url => 'a', :minimum_spending =>'$4')
# Restaurant.create( :name => 'Tian Tian Noodle House',:address =>'368 Koufu Lane', :image_url => 'a', :minimum_spending =>'$8')
# r1 = Restaurant.create( :name => 'Sushi Tei',:address =>'368 Holland Lane', :image_url => 'https://www.sushitei.com/outlets/thumbnails/SG.jpg', :minimum_spending =>'$12')
#
5.times do
Restaurant.create(
   name: FFaker::Book.title,
   address: FFaker::AddressAU.street_address,
   image_url: FFaker::Image.url,
   minimum_spending: '$12'
    )
end

5.times do
Post.create(
  title: FFaker::CheesyLingo.title,
  restaurant_id: 1,
  customer_id: 1,
  message: FFaker::Lorem.phrase,
  pickup_location: FFaker::AddressUS.street_name

)
end

5.times do
m1 = MenuItem.create(
  name: FFaker::Food.fruit,
  price: 10,
  restaurant_id: 2

)
end

# Menu.create(  name: FFaker::Food.fruit,
#   price: 10,
#   restaurant_id: 2,
#   created_at: FFaker::Time.datetime,
#   updated_at: FFaker::Time.datetime)

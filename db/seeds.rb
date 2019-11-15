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
Restaurant.create( :name => 'Sushi Tei',:address =>'368 Holland Lane', :image_url => 'https://www.paragon.com.sg/media/media/images/stores/Sushi%20Tei/sushitei_feature_1200.jpg', :minimum_spending =>'$50')

Restaurant.create( :name => 'Carls Junior',:address =>'32 Holland Drive', :image_url => 'https://i.pinimg.com/originals/12/43/f3/1243f3ca23b1333061004ef6512bc82d.jpg', :minimum_spending =>'$30')

Restaurant.create( :name => 'Pizza Hut',:address =>'8 Dunearn Road', :image_url => 'hhttps://www.pymnts.com/wp-content/uploads/2014/10/PizzaHutlogo.jpg', :minimum_spending =>'$40')

Restaurant.create( :name => 'Mcdonalds',:address =>'65 Sixth Avenue', :image_url => 'https://carlisletheacarlisletheatre.org/images/mcdonalds-logo-8.jpg', :minimum_spending =>'$20')

Restaurant.create( :name => 'Tambuah Mas',:address =>'2 Third Avenue', :image_url => 'https://www.paragon.com.sg/media/media/images/stores/Tambuah%20Mas%20Indonesian%20Restaurant%20(Halal%20Certified)/tambuah_feature_1200.jpg', :minimum_spending =>'$50')

Restaurant.create( :name => 'Koi The',:address =>'46 Linden Drive', :image_url => 'https://middle.pngfans.com/20190629/rz/koi-logo-png-koi-th-bubble-tea-clipart-602ef1685f233d35.jpg', :minimum_spending =>'$40')

Restaurant.create( :name => 'Pasta Fresca',:address =>'521 Watten Drive', :image_url => 'https://s3-ap-southeast-1.amazonaws.com/v3-live.image.oddle.me/logo/menu_logo_PastaFresca9e4711.jpg', :minimum_spending =>'$50')





Post.create( :title => 'Sushi Shakedown',:retaurant_id => 1,:customer_id => 1,:message => 'Calling all sushi lovers! Join this movement of sushi overload!',:pickup_location => 'Bedok MRT control station')

Post.create( :title => 'Burger Bashi',:retaurant_id => 2,:customer_id => 3,:message => 'Let us train for the burger eating world cup',:pickup_location => '238 Orchard Road, Singapore 246333')

Post.create( :title => 'Pizza Piesta',:retaurant_id => 3,:customer_id => 2,:message => 'Cowabunga!!!',:pickup_location => 'Blk 32 Tampines Ave 3, Singapore 524352, void deck')

Post.create( :title => 'When in Rome',:retaurant_id => 7,:customer_id => 1,:message => 'Do what the Romans do. Till pasta-finish do us part',:pickup_location => 'Braddell MRT control station')



5.times do
m1 = MenuItem.create(
  name: FFaker::Food.fruit,
  price: 10,
  restaurant_id: 2

)
end

5.times do
CustomerProfile.create(
  name: FFaker::Name.male_name_with_suffix,
  address: FFaker::AddressAU.full_address,
  phone: FFaker::PhoneNumber.short_phone_number

)
end

# Menu.create(  name: FFaker::Food.fruit,
#   price: 10,
#   restaurant_id: 2,
#   created_at: FFaker::Time.datetime,
#   updated_at: FFaker::Time.datetime)

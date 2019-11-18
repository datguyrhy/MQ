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


# Restaurant==========================================================================
Restaurant.create( :name => 'Sushi Tei',:address =>'368 Holland Lane', :image_url => 'https://www.lotteavenue.co.id/images/exhibitor/php1bg4vp_resized.png', :minimum_spending => 50)

Restaurant.create( :name => 'Carls Junior',:address =>'32 Holland Drive', :image_url => 'https://seeklogo.net/wp-content/uploads/2017/04/carls-jr-logo-01.png', :minimum_spending =>30)

Restaurant.create( :name => 'Pizza Hut',:address =>'8 Dunearn Road', :image_url => 'https://www.samlevysvillage.com/wp-content/uploads/2018/01/Pizza_Hut_logo.svg.png', :minimum_spending =>40)

Restaurant.create( :name => 'Mcdonalds',:address =>'65 Sixth Avenue', :image_url => 'http://pngimg.com/uploads/mcdonalds/mcdonalds_PNG14.png', :minimum_spending =>20)

Restaurant.create( :name => 'Peramakan',:address =>'2 Third Avenue', :image_url => 'https://www.peramakan.com/wp-content/uploads/2019/05/logo_dark.png', :minimum_spending =>40)

Restaurant.create( :name => 'Koi The',:address =>'46 Linden Drive', :image_url => 'https://www.koithe.com/frontend/images/about/about-logo.png', :minimum_spending =>10)

Restaurant.create( :name => 'Pasta Fresca',:address =>'521 Watten Drive', :image_url => 'https://www.dapaolo.com.sg/assets/images/DaPaoloGroupLogo.png', :minimum_spending =>50)




# Post==================================================================================
Post.create( :title => 'Sushi Shakedown',:restaurant_id => 1,:customer_id => 1,:message => 'Who wants Sushi Tei!? Just help me gather $50 and meet me at Bedok MRT for eternal bliss',:pickup_location => 'Bedok MRT control station')

Post.create( :title => 'Burger Bashi',:restaurant_id => 2,:customer_id => 3,:message => 'Calling all grub lovers in the Orchard area! Unite for $30 and a burger from Carls Junior will be yours',:pickup_location => '238 Orchard Road, Singapore 246333')

Post.create( :title => 'Pizza Piesta',:restaurant_id => 3,:customer_id => 2,:message => 'Old is Gold! Pizza Hut party in Tampines for just $40!',:pickup_location => 'Blk 32 Tampines Ave 3, Singapore 524352, void deck')

Post.create( :title => 'Super Size Her',:restaurant_id => 4,:customer_id => 2,:message => 'Mcdonalds without friends just dont cut it. Meet me at Redhill MRT and we can have a party for just $20!',:pickup_location => 'Redhill MRT control station')

Post.create( :title => 'Makan Sini',:restaurant_id => 5,:customer_id => 3,:message => 'Peranakan with Peramakan. Make them go the distance to Hougang for just a grand astounding total of $40',:pickup_location => 'Blk 15 Hougang Ave 1, lift lobby')

Post.create( :title => 'Koi Duh',:restaurant_id => 6,:customer_id => 3,:message => 'Chinatown Point will never be the same again with just $10 worth of Koi bubble tea!',:pickup_location => 'Chinatown Point Level 2 female toilet entrance')

Post.create( :title => 'When in Rome',:restaurant_id => 7,:customer_id => 1,:message => 'Who ever said Gastronomia is Italian fine-dining? Just $50 will feed your family to Roman-size, only at Braddell MRT',:pickup_location => 'Braddell MRT control station')


# MenuItem========================================================================
MenuItem.create( :name => 'Salmon Somen',:price => 16 ,:restaurant_id => 1)
MenuItem.create( :name => 'Chirashi Don',:price => 28 ,:restaurant_id => 1)
MenuItem.create( :name => 'Soft Shell Crab Maki',:price => 12 ,:restaurant_id => 1)
MenuItem.create( :name => 'Sashimi Salad',:price => 20 ,:restaurant_id => 1)
MenuItem.create( :name => 'Lobster Ramen',:price => 35 ,:restaurant_id => 1)

MenuItem.create( :name => 'Portobello Mushroom Burger',:price => 12 ,:restaurant_id => 2)
MenuItem.create( :name => 'Charbroiled Thickburger',:price => 14 ,:restaurant_id => 2)
MenuItem.create( :name => 'Criss-Cut Fries',:price => 6 ,:restaurant_id => 2)
MenuItem.create( :name => 'Turkey Low-Carb Burger',:price => 10 ,:restaurant_id => 2)
MenuItem.create( :name => 'Fillet C. Fish Burger',:price => 18 ,:restaurant_id => 2)

MenuItem.create( :name => 'Hawaiian Pan Pizza',:price => 22 ,:restaurant_id => 3)
MenuItem.create( :name => 'Hot n Spicy Drumlets',:price => 10 ,:restaurant_id => 3)
MenuItem.create( :name => 'Super Supreme Pizza',:price => 23 ,:restaurant_id => 3)
MenuItem.create( :name => 'Seafood Delight Pizza',:price => 24 ,:restaurant_id => 3)
MenuItem.create( :name => 'Honey Mustard Pizza',:price => 20 ,:restaurant_id => 3)

MenuItem.create( :name => 'Double McSpicy Meal',:price => 9 ,:restaurant_id => 4)
MenuItem.create( :name => 'Triple Fillet O Fish Meal',:price => 12 ,:restaurant_id => 4)
MenuItem.create( :name => 'Single Cheese Burger Meal',:price => 6 ,:restaurant_id => 4)
MenuItem.create( :name => 'Double Big Mac Meal',:price => 18 ,:restaurant_id => 4)
MenuItem.create( :name => 'Hot Fudge Sundae Cheat Meal',:price => 20 ,:restaurant_id => 4)

MenuItem.create( :name => 'Tauhu Telor',:price => 10 ,:restaurant_id => 5)
MenuItem.create( :name => 'Iken Pepes',:price => 8 ,:restaurant_id => 5)
MenuItem.create( :name => 'Ayam Marica',:price => 12 ,:restaurant_id => 5)
MenuItem.create( :name => 'Sambal Fish Head',:price => 18 ,:restaurant_id => 5)
MenuItem.create( :name => 'Sotong Boleh',:price => 15 ,:restaurant_id => 5)

MenuItem.create( :name => 'Oolong Milk Tea',:price => 4 ,:restaurant_id => 6)
MenuItem.create( :name => 'Lime Brown Sugar',:price => 5 ,:restaurant_id => 6)
MenuItem.create( :name => 'Yakult Pearl Tea',:price => 5 ,:restaurant_id => 6)
MenuItem.create( :name => 'Yam Pudding Gulp',:price => 7 ,:restaurant_id => 6)
MenuItem.create( :name => 'Banana Brown Sugar',:price => 6 ,:restaurant_id => 6)

MenuItem.create( :name => 'Carbonara Pasta',:price => 16 ,:restaurant_id => 7)
MenuItem.create( :name => 'Spaghetti Bolognese',:price => 14 ,:restaurant_id => 7)
MenuItem.create( :name => 'Lemoncello Crayfish',:price => 22 ,:restaurant_id => 7)
MenuItem.create( :name => 'Red Sangria Jug',:price => 25 ,:restaurant_id => 7)
MenuItem.create( :name => 'Fusili Al Dante',:price => 20 ,:restaurant_id => 7)





# Customer===========================================================================

# Customer.create( :email => 'wongyijin@gmail.com',:encrypted_password => '$2a$11$Hshu00ZIF2lCbtE1ObeEcuRIamSjhXKKr4PySgmeSEWM/0OgCFz12')

# Customer.create( :email => 'brandon@gmail.com',:encrypted_password => '$2a$11$y88nePyEmyS9Fi51yo8OD.ygLThS2TWAbw1h3RgNrOLsyA2ZOYOaG')

# Customer.create( :email => 'siewling@gmail.com',:encrypted_password => '$2a$11$E8ZLTZhI6GUW.oMPPQktwuaBajIpS5fVvnWWsqR78c736v0kvyzVC')

Customer.create!([
{email: "wongyijin@gmail.com", password: "wongyijin", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
{email: "brandon@gmail.com", password: "brandon", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
{email: "siewling@gmail.com", password: "siewling", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])

# CustomerProfile=============================================================
CustomerProfile.create( :name => 'Yi Jin',:address => 'Blk 112 Bedok Avenue 1', :phone => '97567741', :customer_id => 1)

CustomerProfile.create( :name => 'Brandon',:address => 'Blk 516 Tampines Avenue 5', :phone => '98173354', :customer_id => 2)

CustomerProfile.create( :name => 'Siew Ling',:address => '12 Devonshire Road', :phone => '82884929', :customer_id => 3)



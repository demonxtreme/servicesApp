# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Faker:: is a gem that allows to generate random seed data.
#I generate seed data in order to test the application
services_list = [
    [1, "Panno and Sons Plumbers",  "Plumber", Faker::Lorem.sentence(3) , 53.347420, -6.253910,      Faker::Avatar.image,  Faker::Commerce.price  , "Monday to friday 9 to 18 hs", Faker::Internet.email ],
    [2, "John the Plumber",  "Plumber",            Faker::Lorem.sentence(3) , 53.357420, -6.254910,     Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs",Faker::Internet.email ],
    [3, "Plumbing Unlimited",  "Plumber",          Faker::Lorem.sentence(3) , 54.347420, -6.353910,   Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs" , Faker::Internet.email ],
    [1, "Miguel el Plumber Bombastico", "Plumber", Faker::Lorem.sentence(3) , 53.347420, -6.253910, Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs",    Faker::Internet.email ],
    [2, "Electricians Direct",  "Electrician",     Faker::Lorem.sentence(3) , 53.348297, -6.256178,     Faker::Avatar.image,  Faker::Commerce.price ,"Monday to friday 9 to 18 hs",Faker::Internet.email ],
    [3, "Handy Manny Electronico", "Electrician",  Faker::Lorem.sentence(3) , 53.348297, -6.255178,  Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs",   Faker::Internet.email ],
    [1,"Maths Teacher", "Teacher",                 Faker::Lorem.sentence(3) , 53.348195, -6.259152,  Faker::Avatar.image,  Faker::Commerce.price, "24 hours 24/7",                 Faker::Internet.email ],
    [3,"English Teacher", "Teacher",               Faker::Lorem.sentence(3) , 53.342195, -6.258152,  Faker::Avatar.image,  Faker::Commerce.price, "Mondays to Saturdays all day",  Faker::Internet.email ],
    [1,"Spanish Teacher", "Teacher",               Faker::Lorem.sentence(3) , 54.346195, -6.257152,  Faker::Avatar.image,  Faker::Commerce.price,  "Mondays to Saturdays all day", Faker::Internet.email ],
    [2,"Alan Pannos Guide to Biology",  "Teacher", Faker::Lorem.sentence(3) , 53.348195, -6.256152,  Faker::Avatar.image,  Faker::Commerce.price, "Mondays to Saturdays all day" , Faker::Internet.email ],
    [3,"DHL", "Delivery",                          Faker::Lorem.sentence(3) , 53.349988, -6.253888,    Faker::Avatar.image,  Faker::Commerce.price,"Mondays to Saturdays all day", Faker::Internet.email ],
    [1,"An Post", "Delivery",                      Faker::Lorem.sentence(3) , 53.352988, -6.267888,         Faker::Avatar.image,  Faker::Commerce.price , "Mondays to Saturdays all day",Faker::Internet.email ],
    [2,"Postage Direct", "Delivery",               Faker::Lorem.sentence(3) , 53.420988, -6.280888,   Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs", Faker::Internet.email       ],
    [3,"Kids Parties", "Planner",                  Faker::Lorem.sentence(3) ,  53.367660, -6.286972,     Faker::Avatar.image,  Faker::Commerce.price ,"Monday to friday 9 to 18 hs", Faker::Internet.email],
    [1,"Marielvia the Wedding Planner", "Planner", Faker::Lorem.sentence(3) ,  53.361660, -6.190972, Faker::Avatar.image,  Faker::Commerce.price ,"Monday to friday 9 to 18 hs" , Faker::Internet.email],
    [2,"Dora the Party Explorer", "Planner",       Faker::Lorem.sentence(3) ,  53.350660, -6.321972,  Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs"  , Faker::Internet.email  ],
    [1, "Phils Engineering Co.","Engineer",        Faker::Lorem.sentence(3) , 53.348867, -6.248095,   Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs" , Faker::Internet.email  ],
    [2, "Yevhens Big Engineering Co.","Engineer",  Faker::Lorem.sentence(3) , 53.348867, -6.368095,   Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs"  , Faker::Internet.email  ],
    [3, "Ramas Engineers", "Engineer",             Faker::Lorem.sentence(3) , 53.348867, -6.358095,   Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs"  , Faker::Internet.email  ],
    [1, "Panno Engineering Limited", "Engineer",   Faker::Lorem.sentence(3), 53.438867, -6.248095,    Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs"  , Faker::Internet.email  ],
    [2, "Industrial Painters",  "Painter",         Faker::Lorem.sentence(3), 53.342786, -6.249049,    Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs" , Faker::Internet.email  ],
    [3, "Private Painting Co.",  "Painter",        Faker::Lorem.sentence(3), 53.335786, -6.249049,    Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs"  , Faker::Internet.email  ],
    [1, "Alans Painting Extravaganza",  "Painter", Faker::Lorem.sentence(3) , 53.329786, -6.249049,  Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs"  , Faker::Internet.email  ],
    [2, "We Paint Everything",  "Painter",         Faker::Lorem.sentence(3) , 53.349786, -6.249049,   Faker::Avatar.image,  Faker::Commerce.price ,"Monday to friday 9 to 18 hs" , Faker::Internet.email  ],
    [1, "Large Scale Builders", "Builder",         Faker::Lorem.sentence(3) , 53.348287, -6.252654, Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs"    , Faker::Internet.email  ],
    [2, "Small Building Co.", "Builder",           Faker::Lorem.sentence(3) , 53.438287, -6.525654, Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs"   , Faker::Internet.email  ],
    [3, "Pannos Building Group", "Builder",        Faker::Lorem.sentence(3) , 54.843287, -6.363654, Faker::Avatar.image,  Faker::Commerce.price,"Monday to friday 9 to 18 hs"    , Faker::Internet.email  ],
    [1, "Handy Manny", "Builder",                  Faker::Lorem.sentence(3) , 53.358287, -6.525654, Faker::Avatar.image,  Faker::Commerce.price, "Monday to friday 9 to 18 hs"   , Faker::Internet.email  ]
]

services_list.each do |c_id, name, service_type, description, latitude, longitude, image, price, availability, email|
  Service.find_or_create_by(user_id: c_id, name: name, service_type: service_type, description: description, latitude: latitude, longitude: longitude ,
                            img_url: image, price: price, availability: availability, email: email)
end

customer_list = [
    [ "alan@admin.com","123456", "123456", "Capo", "26 essex street", 53453454, "12-12-1986", true  ],
    [ "Pepe@pepe.com", "123456","123456"," Mascapito", "the liffey trust centre, Dublin 1",23454235, "11-12-1986" ],
    [ "Pepe1@pepe.com", "123456","123456",Faker::Name.name, Faker::Address.street_address,Faker::PhoneNumber, Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) ]
]

customer_list.each do | email, password, password_confirmation ,name, address, phone, birthday, admin|
  User.create!(email: email,password: password,password_confirmation: password_confirmation , name: name, address: address, phone: phone, birthday: birthday,
  admin: admin)
end

reviews_list = [
    [1, 2, Faker::Lorem.sentence(3),Faker::Lorem.sentence(6), Faker::Avatar.image("my-own-slug", "50x50") ],
    [2, 1, Faker::Lorem.sentence(3),Faker::Lorem.sentence(6), Faker::Avatar.image("my-own-slug", "50x50") ],
    [3, 3, Faker::Lorem.sentence(3),Faker::Lorem.sentence(6), Faker::Avatar.image("my-own-slug", "50x50") ],
    [9, 3, Faker::Lorem.sentence(3),Faker::Lorem.sentence(6), Faker::Avatar.image("my-own-slug", "50x50") ],
    [9, 1, Faker::Lorem.sentence(3),Faker::Lorem.sentence(6), Faker::Avatar.image("my-own-slug", "50x50") ],
    [9, 2, Faker::Lorem.sentence(3),Faker::Lorem.sentence(6), Faker::Avatar.image("my-own-slug", "50x50") ],
    [9, 1, Faker::Lorem.sentence(3),Faker::Lorem.sentence(6), Faker::Avatar.image("my-own-slug", "50x50") ]
]

reviews_list.each do |service, user, title, description, img_url|
  Review.find_or_create_by(user_id: user, service_id: service, title: title, description: description, image_url: img_url)
end
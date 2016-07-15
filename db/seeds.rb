# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


services_list = [
    [ "Panno and Sons Plumbers",  "Plumber", "Lorem ipsum", 53.347420, -6.253910, ],
    [ "John the Plumber",  "Plumber", "Lorem ipsum", 53.357420, -6.254910, ],
    [ "Plumbing Unlimited",  "Plumber", "Lorem ipsum", 54.347420, -6.353910, ],
    [ "Miguel el Plumber Bombastico",  "Plumber", "Lorem ipsum", 53.347420, -6.253910, ],
    [ "Electricians Direct",  "Electrician", "Lorem ipsum ", 53.348297, -6.256178, ],
    [ "Handy Manny Electronico", "Electrician", "Lorem ipsum ", 53.348297, -6.255178, ],
    [ "Maths Teacher", "Teacher", "Lorem ipsum", 53.348195, -6.259152, ],
    [ "English Teacher", "Teacher", "Lorem ipsum", 53.342195, -6.258152, ],
    [ "Spanish Teacher", "Teacher", "Lorem ipsum", 54.346195, -6.257152, ],
    [ "Alan Pannos Guide to Biology",  "Teacher", "Lorem ipsum", 53.348195, -6.256152, ],
    [ "DHL", "Delivery", "Lorem ipsum", 53.349988, -6.253888, ],
    [ "An Post", "Delivery",  "Lorem ipsum", 53.352988, -6.267888, ],
    [ "Postage Direct", "Delivery", "Lorem ipsum", 53.420988, -6.280888, ],
    [ "Kids Parties", "Planner", "Lorem ipsum",  53.367660, -6.286972, ],
    [ "Marielvia the Wedding Planner", "Planner", "Lorem ipsum",  53.361660, -6.190972, ],
    [ "Dora the Party Explorer", "Planner", "Lorem ipsum",  53.350660, -6.321972, ],
    [ "Phils Engineering Co.","Engineer", "Lorem ipsum", 53.348867, -6.248095, ],
    [ "Yevhens Big Engineering Co.","Engineer", "Lorem ipsum", 53.348867, -6.368095, ],
    [ "Ramas Engineers", "Engineer", "Lorem ipsum", 53.348867, -6.358095, ],
    [ "Panno Engineering Limited", "Engineer", "Lorem ipsum", 53.438867, -6.248095, ],
    [ "Industrial Painters",  "Painter", "Lorem ipsum", 53.342786, -6.249049, ],
    [ "Private Painting Co.",  "Painter", "Lorem ipsum", 53.335786, -6.249049, ],
    [ "Alans Painting Extravaganza",  "Painter", "Lorem ipsum", 53.329786, -6.249049, ],
    [ "We Paint Everything",  "Painter", "Lorem ipsum", 53.349786, -6.249049, ],
    [ "Large Scale Builders", "Builder", "Lorem ipsum", 53.348287, -6.252654, ],
    [ "Small Building Co.", "Builder", "Lorem ipsum", 53.438287, -6.525654, ],
    [ "Pannos Building Group", "Builder", "Lorem ipsum", 54.843287, -6.363654, ],
    [ "Handy Manny", "Builder", "Lorem ipsum", 53.358287, -6.525654, ]
]

services_list.each do | name, service_type, description, latitude, longitude|
  Service.find_or_create_by(name: name, service_type: service_type, description: description, latitude: latitude, longitude: longitude)
end

customer_list = [
    [ "Alan", "Capo", "26 essex street", 53453454, "12-12-1986"   ],
    [ "Pepe", "asd", "the liffey trust centre, Dublin 1",23454235, "11-12-1986" ]
]

customer_list.each do |name, lastname, address, phone, birthday|
  Customer.find_or_create_by( name: name, lastname: lastname, address: address, phone: phone, birthday: birthday)
end

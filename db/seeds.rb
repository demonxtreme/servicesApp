# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

services_list = [
      [ "Plumbers",       1, "Lorem ipsum",    53.347420,  -6.253910,  ],
      [ "Electricians",   2, "Lorem ipsum ",   53.348297, -6.254178,   ],
      [ "Teachers",       3, "Lorem ipsum",    53.348195,   -6.256152, ],
      [ "Deliveries",     4,  "Lorem ipsum",   53.349988,   -6.253888,  ],
      [ "Party planners", 5,"Lorem ipsum",     53.350660,   -6.254972,   ],
      [ "Engineers",      6, "Lorem ipsum",    53.348867,   -6.248095,   ],
      [ "Painters",       7, "Lorem ipsum",    53.349786,   -6.249049,   ],
      [ "Builders",      8, "Lorem ipsum",    53.348287,   -6.252654,    ]
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

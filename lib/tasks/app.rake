namespace :app do


  task :ensure_development_environment => :environment do
    if Rails.env.production?
      raise "\nI' sorry, I can' do that. \nI can' drop your production database"
    end
  end

  desc "Reset"
  task :reset => [:ensure_development_environment, "db:drop", "db:create", "db:migrate", "db:seed", "app:populate"]

  desc "Populate  the database with development data."
  task :populate => :environment do
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
  end

end
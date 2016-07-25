namespace :app do


  task :ensure_development_environment => :environment do
    if Rails.env.production?
      raise "\nI' sorry, I can' do that. \nI can' drop your production database"
    end
  end

  desc "Reset"
  task :reset => [:ensure_development_environment, "db:drop", "db:create", "db:migrate", "db:seed"]

  desc "Populate  the database with development data."
  task :populate => :environment do
    services_list = [
        [1, "Panno and Sons Plumbers", "Plumber", "Lorem ipsum", 53.347420, -6.253910, Faker::Avatar.image, Faker::Commerce.price],
        [2, "John the Plumber", "Plumber", "Lorem ipsum", 53.357420, -6.254910, Faker::Avatar.image, Faker::Commerce.price],
        [3, "Plumbing Unlimited", "Plumber", "Lorem ipsum", 54.347420, -6.353910, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Miguel el Plumber Bombastico", "Plumber", "Lorem ipsum", 53.347420, -6.253910, Faker::Avatar.image, Faker::Commerce.price],
        [2, "Electricians Direct", "Electrician", "Lorem ipsum ", 53.348297, -6.256178, Faker::Avatar.image, Faker::Commerce.price],
        [3, "Handy Manny Electronico", "Electrician", "Lorem ipsum ", 53.348297, -6.255178, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Maths Teacher", "Teacher", "Lorem ipsum", 53.348195, -6.259152, Faker::Avatar.image, Faker::Commerce.price],
        [3, "English Teacher", "Teacher", "Lorem ipsum", 53.342195, -6.258152, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Spanish Teacher", "Teacher", "Lorem ipsum", 54.346195, -6.257152, Faker::Avatar.image, Faker::Commerce.price],
        [2, "Alan Pannos Guide to Biology", "Teacher", "Lorem ipsum", 53.348195, -6.256152, Faker::Avatar.image, Faker::Commerce.price],
        [3, "DHL", "Delivery", "Lorem ipsum", 53.349988, -6.253888, Faker::Avatar.image, Faker::Commerce.price],
        [1, "An Post", "Delivery", "Lorem ipsum", 53.352988, -6.267888, Faker::Avatar.image, Faker::Commerce.price],
        [2, "Postage Direct", "Delivery", "Lorem ipsum", 53.420988, -6.280888, Faker::Avatar.image, Faker::Commerce.price],
        [3, "Kids Parties", "Planner", "Lorem ipsum", 53.367660, -6.286972, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Marielvia the Wedding Planner", "Planner", "Lorem ipsum", 53.361660, -6.190972, Faker::Avatar.image, Faker::Commerce.price],
        [2, "Dora the Party Explorer", "Planner", "Lorem ipsum", 53.350660, -6.321972, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Phils Engineering Co.", "Engineer", "Lorem ipsum", 53.348867, -6.248095, Faker::Avatar.image, Faker::Commerce.price],
        [2, "Yevhens Big Engineering Co.", "Engineer", "Lorem ipsum", 53.348867, -6.368095, Faker::Avatar.image, Faker::Commerce.price],
        [3, "Ramas Engineers", "Engineer", "Lorem ipsum", 53.348867, -6.358095, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Panno Engineering Limited", "Engineer", "Lorem ipsum", 53.438867, -6.248095, Faker::Avatar.image, Faker::Commerce.price],
        [2, "Industrial Painters", "Painter", "Lorem ipsum", 53.342786, -6.249049, Faker::Avatar.image, Faker::Commerce.price],
        [3, "Private Painting Co.", "Painter", "Lorem ipsum", 53.335786, -6.249049, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Alans Painting Extravaganza", "Painter", "Lorem ipsum", 53.329786, -6.249049, Faker::Avatar.image, Faker::Commerce.price],
        [2, 3, "We Paint Everything", "Painter", "Lorem ipsum", 53.349786, -6.249049, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Large Scale Builders", "Builder", "Lorem ipsum", 53.348287, -6.252654, Faker::Avatar.image, Faker::Commerce.price],
        [2, "Small Building Co.", "Builder", "Lorem ipsum", 53.438287, -6.525654, Faker::Avatar.image, Faker::Commerce.price],
        [3, "Pannos Building Group", "Builder", "Lorem ipsum", 54.843287, -6.363654, Faker::Avatar.image, Faker::Commerce.price],
        [1, "Handy Manny", "Builder", "Lorem ipsum", 53.358287, -6.525654, Faker::Avatar.image, Faker::Commerce.price]
    ]

    services_list.each do |c_id, name, service_type, description, latitude, longitude, image, price|
      Service.find_or_create_by(user_id: c_id, name: name, service_type: service_type, description: description, latitude: latitude, longitude: longitude,
                                img_url: image, price: price)
    end

    customer_list = [
        ["alan@alan.com", "123456", "123456", "Capo", "26 essex street", 53453454, "12-12-1986"],
        ["Pepe@pepe.com", "123456", "123456", "Mascapito", "the liffey trust centre, Dublin 1", 23454235, "11-12-1986"],
        ["Pepe1@pepe.com", "123456", "123456", Faker::Name.name, Faker::Address.street_address, Faker::PhoneNumber, Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)]
    ]

    customer_list.each do |email, password, password_confirmation, name, address, phone, birthday|
      User.create!(email: email, password: password, password_confirmation: password_confirmation, name: name, address: address, phone: phone, birthday: birthday)
    end
  end

end
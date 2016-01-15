# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


15.times do |x|
  Club.create(
    name: Faker::Company.name,
    logo: Faker::Company.logo,
    city: Faker::Address.city,
    address: Faker::Address.street_address,
    zip: Faker::Address.zip,
    state:Faker::Address.state_abbr,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    description: Faker::Lorem.sentence
    )
end
club = Club.all.length
i=1
while i < club + 1
  5.times do |x|
    Drink.create(
      clubs_id: i,
      drink: Faker::Commerce.product_name,
      price: Faker::Commerce.price
      )
  end

  i +=1
end

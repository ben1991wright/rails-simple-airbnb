# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  puts 'Creating flat!'
  flat = Flat.new({
    name: "#{Faker::HitchhikersGuideToTheGalaxy.character}",
    address:"#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.paragraph,
    image_url: Faker::LoremPixel.image("200x300", false, 'city'),
    price_per_night: rand(3..12) * 10,
    number_of_guests: rand(1..5)
  })
  puts flat.save
end

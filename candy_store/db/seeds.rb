# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Candy.destroy_all


puts "Candy"

20.times do
    Candy.create(name: Faker::Superhero.name + ' candy',
                 calories: rand(1...1000),
                 wrapper_color: Faker::Color.color_name,
                 has_nuts: [true, false].sample )
    
end
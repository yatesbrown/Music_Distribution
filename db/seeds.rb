# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
artist_list = ['The Doors',
              'The Doors',
              'Pink Floyd',
              'Ozzy Osbourne',
              'DJ Dado',
              'The Killers',
              'The Who']

Artist.destroy_all
artist_list.each do |name|
  Artist.create( name: name )
end

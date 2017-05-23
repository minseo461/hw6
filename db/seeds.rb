# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Inserting category completed"
[
    ["사랑"],
    ["학교"],
    ['진지'],
    ['종강하고싶다']
].each do |x|
    Category.create(name: x[0])

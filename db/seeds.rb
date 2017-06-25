# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

todos = 10.times {Todo.create!(description: Faker::Food.spice + ' at ' + Faker::LordOfTheRings.location,
                     pomodoro_estimate: rand(1..5),
                     complete: false
                    )}
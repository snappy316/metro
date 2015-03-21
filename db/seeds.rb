# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Driver.create(name: 'Bob', email: 'bob@example.com', preference: 'evening trains')
Driver.create(name: 'Mike', email: 'mike@example.com', preference: 'morning busses')
Driver.create(name: 'Addy', email: 'addy@example.com', preference: 'afternoon streetcars')

Coach.create(klass: 'Bus', model: 'BlueBird', year: 2009)
Coach.create(klass: 'Train', model: 'Japanese', year: 2013)
Coach.create(klass: 'Streetcar', model: 'Sweden', year: 2011)

Assignment.create(driver_id: 1, coach_id: 2, route: "Central Link", start_time: "2015-03-20 16:00:00", end_time: "2015-03-21 00:00:00")
Assignment.create(driver_id: 2, coach_id: 1, route: 219, start_time: "2015-03-20 04:00:00", end_time: "2015-03-20 12:00:00")
Assignment.create(driver_id: 3, coach_id: 3, route: "South Lake Union", start_time: "2015-03-20 10:00:00", end_time: "2015-03-20 16:00:00")

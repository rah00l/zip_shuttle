# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 
Route.destroy_all

["Aundh via Sanghvi Phata","Kothrud via Sus Road","Nigadi via Chinchwad Gaon","Pimple Gurav/Saudagar via Jagtap Diary"].each { |r| Route.create(name: r )}

["7:00", "8:00" , "8:30","9:00", "9:30","10:00"].each { |a| PickupRouteStartTime.create(pickup_start_time: a) }

["17:10","17:45","18:30","19:00","20.05","20:35"].each { |a| DropRouteStartTime.create(drop_start_time: a) }


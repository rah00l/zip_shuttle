# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 

# For adding pre-dfined role in table of Role 
# [:admin, :author, :contact, :user].each do |role|
#   Role.find_or_create_by_name({ name: role }, without_protection: true)
# end


Route.destroy_all

["Aundh via Sanghvi Phata","Kothrud via Sus Road","Nigadi via Chinchwad Gaon","Pimple Gurav/Saudagar via Jagtap Diary"].each { |r| Route.create(name: r )}


PickupRouteStartTime.destroy_all

["7:00", "8:00" , "8:30","9:00", "9:30","10:00"].each { |a| PickupRouteStartTime.create(pickup_start_time: a) }

DropRouteStartTime.destroy_all

["17:10","17:45","18:30","19:00","20.05","20:35"].each { |a| DropRouteStartTime.create(drop_start_time: a) }

Location.destroy_all

["University Chowk","Sakal Nagar Gate 1","NCL Gate","Hotel Sarjja","Seasons hotel","Parihaar Chowk","DAV Public School", "Food world","Medi point","Convergys","Sangvi phata","Rakshak Chowk","Vishal nagar-Akshad Hotel","Whistling Palms","Cognizant Phase-1, Fire Office","Infosys, Phase-1","STPI,Phase-1","Mindtree- KPIT, Phase-1","Wipro Circle, Phase-2","Infosys Gate 6, Phase-2","Infosys Circle, Phase-2","Quadron, Phase-2","Megapolis, Phase-3"].each do |l|
	Location.create(name: l, route_type: "Short", industrial_stop: "YES")
end


#e.g Mapping for first rote ..
r = Route.first
r.pickup_route_start_time_ids=(PickupRouteStartTime.all.collect(&:id))
r.drop_route_start_time_ids=(DropRouteStartTime.all.collect(&:id))
r.location_ids=(Location.all.collect(&:id))
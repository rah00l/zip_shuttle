# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141213012012) do

  create_table "drop_point_time_details", force: true do |t|
    t.integer  "route_id"
    t.integer  "location_id"
    t.integer  "drop_route_start_time_id"
    t.time     "drop_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drop_route_start_times", force: true do |t|
    t.integer  "route_id"
    t.time     "drop_start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "route_id"
    t.string   "name"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "route_type"
    t.boolean  "industrial_stop"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pickup_point_time_details", force: true do |t|
    t.integer  "route_id"
    t.integer  "location_id"
    t.integer  "pickup_route_start_time_id"
    t.time     "pickup_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pickup_route_start_times", force: true do |t|
    t.integer  "route_id"
    t.time     "pickup_start_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

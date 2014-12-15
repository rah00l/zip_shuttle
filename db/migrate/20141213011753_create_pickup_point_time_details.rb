class CreatePickupPointTimeDetails < ActiveRecord::Migration
  def change
    create_table :pickup_point_time_details do |t|
      t.integer :route_id
      t.integer :location_id
      t.integer :pickup_route_start_time_id
      t.time :pickup_time

      t.timestamps
    end
  end
end

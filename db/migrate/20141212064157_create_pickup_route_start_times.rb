class CreatePickupRouteStartTimes < ActiveRecord::Migration
  def change
    create_table :pickup_route_start_times do |t|
      t.integer :route_id
      t.time :pickup_start_time

      t.timestamps
    end
  end
end

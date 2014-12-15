class CreateDropPointTimeDetails < ActiveRecord::Migration
  def change
    create_table :drop_point_time_details do |t|
      t.integer :route_id
      t.integer :location_id
      t.integer :drop_route_start_time_id
      t.time :drop_time

      t.timestamps
    end
  end
end

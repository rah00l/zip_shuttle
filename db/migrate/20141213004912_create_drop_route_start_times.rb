class CreateDropRouteStartTimes < ActiveRecord::Migration
  def change
    create_table :drop_route_start_times do |t|
      t.integer :route_id
      t.time :drop_start_time

      t.timestamps
    end
  end
end

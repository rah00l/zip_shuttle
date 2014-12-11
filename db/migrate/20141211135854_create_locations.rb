class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :route_id
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :route_type
      t.boolean :industrial_stop

      t.timestamps
    end
  end
end

class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :location_number
      t.integer :latitute
      t.integer :longitude
      t.integer :elevation
      t.string :rock_type
      t.string :mineralogy
      t.string :strike
      t.string :dip
      t.string :structural_trenddescription
      t.string :images
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

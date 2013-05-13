class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :name
      t.integer :building_id
      t.string :plan

      t.timestamps
    end
  end
end

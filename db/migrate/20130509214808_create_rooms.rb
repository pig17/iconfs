class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :local
      t.integer :coordX
      t.integer :coordY
      t.integer :event_id
      t.integer :floor_id
      t.integer :capacity
      t.string :plan

      t.timestamps
    end
  end
end

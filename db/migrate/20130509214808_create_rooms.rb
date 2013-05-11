class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :local
      t.integer :coordX
      t.integer :coordY
      t.integer :event_id

      t.timestamps
    end
  end
end

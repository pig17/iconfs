class AlterRooms < ActiveRecord::Migration

  def change
    change_table :rooms do |t|
      t.integer :capacity
    end
  end
end

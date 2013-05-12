class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.time :time
      t.integer :schedule_id
      t.integer :track_id
      t.integer :room_id
      t.integer :day_id


      t.timestamps
    end
  end
end

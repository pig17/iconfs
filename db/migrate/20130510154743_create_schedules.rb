class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :day_id
      t.integer :event_id

      t.timestamps
    end
  end
end

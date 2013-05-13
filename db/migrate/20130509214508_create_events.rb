class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :time
      t.text :description
      t.integer :schedule_id
      t.integer :track_id
      t.integer :room_id
      t.integer :day_id
      t.integer :user_id
      t.integer :document_id
      t.boolean :session


      t.timestamps
    end
  end
end

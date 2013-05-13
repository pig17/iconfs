class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.timestamp :time
      t.string :local
      t.text :message
      t.integer :user_id

      t.timestamps
    end
  end
end
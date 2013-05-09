class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.time :time
      t.string :track

      t.timestamps
    end
  end
end

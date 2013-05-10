class AlterSession < ActiveRecord::Migration
  def change
    change_table :sessions do |t|
      t.remove :track
    end
  end
end

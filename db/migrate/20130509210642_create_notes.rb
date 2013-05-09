class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.boolean :shared
      t.text :text

      t.timestamps
    end
  end
end

class CreatePis < ActiveRecord::Migration
  def change
    create_table :pis do |t|
      t.integer :coordX
      t.integer :coordY
      t.string :typePI
      t.string :name
      t.string :address
      t.integer :contact
      t.text :description

      t.timestamps
    end
  end
end

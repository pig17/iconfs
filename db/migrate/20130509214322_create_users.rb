class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :sex
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :institution
      t.integer :contact
      t.boolean :available
      t.string :homepage
      t.text :aboutme

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :sex
      t :imageurl
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :institution
      t.integer :contact
      t.boolean :available
      t.string :homepage
      t.text :aboutme
      t.integer :note_id
      t.integer :document_id
      t.integer :meeting_id

      t.timestamps
    end
  end
end

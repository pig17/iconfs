class Note < ActiveRecord::Base
  attr_accessible :shared, :text, :title

  belongs_to :user

  #validates :title , :user_id, :presence=>true, :uniqueness=>true
  #validates :shared, :text, :presence=>true
end

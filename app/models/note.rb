class Note < ActiveRecord::Base
  attr_accessible :shared, :text, :title

  belongs_to :user, :foreign_key => :user_id
end

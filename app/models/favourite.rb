class Favourite < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  has_one :document

end

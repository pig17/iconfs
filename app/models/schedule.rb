class Schedule < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :users
  has_and_belongs_to_many :events


end

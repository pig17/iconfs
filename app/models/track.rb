class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :sessions
  belongs_to :days
end

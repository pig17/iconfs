class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :events
  belongs_to :day
end

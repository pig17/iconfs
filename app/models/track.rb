class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :events
  has_many :days, :through => :events

  validates :name, :presence => true, :uniqueness => true

end

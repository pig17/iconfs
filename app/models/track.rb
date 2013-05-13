class Track < ActiveRecord::Base
  attr_accessible :name, :colour

  validates :name, :colour , :presence => true

  has_many :events
  has_many :days, :through => :events

end

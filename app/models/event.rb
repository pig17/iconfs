class Event < ActiveRecord::Base
  attr_accessible :time, :title

  validates :title, :presence => true, :uniqueness => true
  validates :time, :presence => true

end

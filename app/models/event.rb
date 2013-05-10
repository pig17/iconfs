class Event < ActiveRecord::Base
  attr_accessible :time, :title

  belongs_to :room
  belongs_to :day

  validates :title, :presence => true, :uniqueness => true
  validates :time, :presence => true

end

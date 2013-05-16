class Day < ActiveRecord::Base
  attr_accessible :date

 has_many :events
 has_many :tracks, :through => :events

  validates :date, :presence => true, :uniqueness => true

end

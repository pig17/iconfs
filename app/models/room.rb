class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :local, :capacity

  validates :capacity ,:coordX, :coordY, :presence => true
  validates :local , :presence => true , :uniqueness => true
  validates_uniqueness_of :coordX, :scope => [:coordY]

  has_many :events
  belongs_to :floor, :foreign_key => :floor_id

end

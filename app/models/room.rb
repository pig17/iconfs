class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :local, :capacity

  has_many :events
  belongs_to :floor

  validates :local , :presence => true , :uniqueness => true
  validates :capacity ,:coordX, :coordY, :presence => true
end

class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :local

  has_many :sessions, :dependent => :destroy

  validates :local , :presence => true , :uniqueness => true
  #validates :coordX , :presence => true , :uniqueness => true
end

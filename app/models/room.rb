class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :local

  has_many :sessions

  validates :local , :presence => true , :uniqueness => true
  validates :coordX, :coordY, :presence => true , :uniqueness => true #será?
end

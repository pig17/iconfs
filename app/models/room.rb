class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :local

  has_many :sessions, :dependent => :destroy
end

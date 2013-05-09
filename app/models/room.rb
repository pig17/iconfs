class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :local

  has_many :session_id
end

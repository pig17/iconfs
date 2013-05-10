class Floor < ActiveRecord::Base
  attr_accessible :name

  has_many :rooms
  belongs_to :building
end

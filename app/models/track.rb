class Track < ActiveRecord::Base
  attr_accessible :name, :colour

  validates :name, :colour , :presence => true

  has_many :events, :dependent => :destroy
  belongs_to :day
end

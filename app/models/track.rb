class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :events, :dependent => :destroy
  belongs_to :day
end

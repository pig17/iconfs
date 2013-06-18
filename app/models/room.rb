class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :name, :capacity

  has_many :events

  validates :name ,:presence => true
  validates :capacity ,:presence => true
  validates :coordX ,:presence => true
  validates :coordY ,:presence => true

  # Each room name appears only one time
  validates_uniqueness_of :name
  validates_uniqueness_of :coordX, :scope =>[:coordY]

  def as_json(options)
    {
        :name => name,
    }
  end

end

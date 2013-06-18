class Pi < ActiveRecord::Base
  attr_accessible :address, :contact, :lat, :lng, :description, :name, :typePI

  validates_presence_of :name, :typePI, :lat, :lng
  validates_uniqueness_of :name, :scope => [:lat,:lng]
   # Type must be one of the default set
  validate :correct_type

  def as_json(options)
    {
        :name => name,
        :typePI => typePI,
        :lat => lat,
        :lng => lng,
        :address => address,
        :contact => contact,
        :description => description

    }
  end

  def correct_type
    unless ["Restaurant","Hotel","Bar","Transport","Parking","Conference","Historic Site"].include? self.typePI
      errors.add(:type, "incorrect type")
    end
  end

end

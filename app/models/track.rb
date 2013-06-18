class Track < ActiveRecord::Base
  attr_accessible :name, :acronym

  has_many :events
  has_many :days, :through => :events, :uniq => true

  validates :name, :presence => true, :uniqueness => true
  validates :acronym, :presence => true, :uniqueness => true

  def as_json(options)
    {
        :name => name,
        :acronym => acronym
    }
  end

end

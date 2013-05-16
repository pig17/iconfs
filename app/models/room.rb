class Room < ActiveRecord::Base
  attr_accessible :coordX, :coordY, :name, :capacity, :floor_id

  has_many :events
  belongs_to :floor

  validates :name ,:presence => true
  validates :capacity ,:presence => true
  validates :coordX ,:presence => true
  validates :coordY ,:presence => true
  validates :floor_id, :presence => true

  # Each room name appears only one time per floor
  validates_uniqueness_of :name, :scope => :floor_id
  # Each floor appears only one time per (x,y)
  validates_uniqueness_of :floor_id, :scope =>[:coordX, :coordY]

  def as_json(options)
    {
        :sala => name,
        :building => {:name => nome_do_ed}
    }
  end

  def nome_do_ed
    self.floor.building.name
  end


end

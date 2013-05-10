class Session < Event
  attr_accessible :track

  has_one :room
  has_one :document
  has_many :users, :dependent => :destroy
end

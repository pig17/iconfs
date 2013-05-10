class Session < Event
  attr_accessible :track

  belongs_to :room   #belongs_to or has_on ??
  has_one :document  #belongs_to or has_on ??
  has_many :users, :dependent => :destroy

  validates :track, :presence => true

end

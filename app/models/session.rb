class Session < Event

  has_one :document  #belongs_to or has_on ??
  has_one :users, :dependent => :destroy
  has_one :track

end

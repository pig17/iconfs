class Day < ActiveRecord::Base
  attr_accessible :date

 has_many :events
 has_many :tracks, :through => :events

  validates :date, :presence => true, :uniqueness => true

  def to_json(options={})
    super(
        include:{ :weekday => day_of_week,
                  events: {:except => [:created_at, :updated_at, :id],
                          include: { track: {:except => [:created_at, :updated_at, :id]}}}},
        :except => [:created_at, :updated_at, :id]
    )
  end

  def day_of_week
    self.date.wday
  end

end

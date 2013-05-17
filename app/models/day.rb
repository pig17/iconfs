class Day < ActiveRecord::Base
  attr_accessible :date

  has_many :events
  has_many :tracks, :through => :events

  validates :date, :presence => true, :uniqueness => true

  def as_json(options)
    {
        :day => date,
        :weekday => date.wday,
        :events => { :title => events.name,
                     :duration => duration,
                     :track  => {:name => track.name},
                     :time => time }
    }
  end

end

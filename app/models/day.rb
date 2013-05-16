class Day < ActiveRecord::Base
  attr_accessible :date

  has_many :events
  has_many :tracks, :through => :events

  validates :date, :presence => true, :uniqueness => true

  def as_json(options)
    {
        :day => date,
        :weekday => date.wday,
        :events => { :title => name,
                     :duration => duration,
                     :track  => {:name => name},
                     :time => time }
    }
  end

end

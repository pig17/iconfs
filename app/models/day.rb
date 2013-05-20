class Day < ActiveRecord::Base
  attr_accessible :date

 has_many :events
 has_many :tracks, :through => :events

  validates :date, :presence => true, :uniqueness => true

   def as_json(options)
    {
        :day => date,
        :weekday => day_of_week,
        :events => { :title => nome_dos_eventos,
                     :duration => duration,
                     :track  => {:name => nome_da_track},
                     :time => time }
    }
  end

  def day_of_week
    self.date.wday
  end

  def nome_dos_eventos
    self.events.name
  end

  def nome_da_track
    self.events.track.name
  end

end

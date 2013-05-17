class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :events
  has_many :days, :through => :events

  validates :name, :presence => true, :uniqueness => true

  def as_json(options)
    {
        :track => name,
        :events =>{:name => events_name,
                   :duration => events_duration,
                   :day => day_of_events,
                   :time => time_of_events,
                   :users => {:name => authors_name},
                   :description => events_description}

    }
  end

  def events_name
    self.events.name
  end

  def day_of_events
    self.events.day.date
  end

  def time_of_events
    self.events.time
  end

  def events_duration
    self.events.duration
  end

  def events_description
    self.events.description
  end

  def authors_name
    self.document.users.name
  end


end

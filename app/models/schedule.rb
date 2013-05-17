class Schedule < ActiveRecord::Base
  #attr_accessible :title, :body

  belongs_to :user
  has_and_belongs_to_many :events
  #has_many :days, :through => :events


  def as_json(options)
    {
        :events =>{
            :event => events_name,
            :duration => events_duration,
            :track  => {:name => track_name},
            :day => { :date => day_of_events},
            :time => time_of_events}

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

  def track_name
    self.events.track.name
  end


end

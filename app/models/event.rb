class Event < ActiveRecord::Base
  attr_accessible :time, :title, :duration, :eventType, :description, :user_id, :day_id, :track_id, :room_id, :document_id

  belongs_to :room
  belongs_to :document
  belongs_to :track
  belongs_to :day
  belongs_to :user
  has_many :schedules_events
  has_many :schedules, :through => :schedules_events

  validates :time, :presence => true
  validates :title, :presence => true
  validates :duration, :presence => true
  validates :eventType, :presence => true
  validates :room_id, :presence => true
  #validates :document_id, :presence => true, :if => type != "social"  ALTERAR CASO NAO SE PERMITA QUE EV SOCIAIS TENHAM DOCUMENTOS
  validates :day_id, :presence => true

  # Type must be one of the default set
  validate :correct_type

  # Each time appears only one time per (room,day)
  validates_uniqueness_of :time, :scope => [:room_id, :day_id]

  # Each title appears only one time per track
  validates_uniqueness_of :title, :scope => :track_id


  def correct_type
    unless ["Keynote","Workshop","General","Social"].include? self.eventType
      errors.add(:type, "incorrect type")
    end
  end


def as_json(options={})
    {
        :title => self.title,
        :duration => self.duration,
        :time => self.time,
        #:users => {:name => speaker_name},
        :description => self.description,
        #:document => { :link => document_link }

    }
end

  def track_name
    if self.track.blank? then
      "none"
    else
      Track.find(track_id).name
    end
  end

  def day_date
    self.day.date
  end

  def speaker_name
    if self.user.blank? then
         "none"
    else
         self.user.name
    end
  end

  def document_link
    if self.document.blank? then
      "none"
    else
      self.document.link
    end
  end

end

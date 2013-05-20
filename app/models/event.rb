class Event < ActiveRecord::Base
  attr_accessible :time, :title, :duration, :type

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
  validates :type, :presence => true
  validates :room_id, :presence => true
  #validates :document_id, :presence => true, :if => type != "social"  ALTERAR CASO NAO SE PERMITA QUE EV SOCIAIS TENHAM DOCUMENTOS
  validates :day_id, :presence => true

  # User is always one of the authors
  validate :speaker_is_an_author

  # Type must be one of the default set
  validate :correct_type

  # Each time appears only one time per (room,day)
  validates_uniqueness_of :time, :scope => [:room_id, :day_id]

  # Each title appears only one time per track
  validates_uniqueness_of :title, :scope => :track_id


  def speaker_is_an_author
    unless self.document.users.all.include? self.user
      errors.add(:user_id, "speaker must be an author")
    end
  end

  def correct_type
    unless ["keynote","workshop","paper presentation","poster presentation","social"].include? self.type
      errors.add(:type, "incorrect type")
    end
  end

def as_json(options)
    {
        :event => name,
        :duration => duration,
        :track  => {:name => nome_da_track},
        :day => day,
        :time => time,
        :users => {:name => authors_name},
        :description => description,
        :document => { :link => document.link }

    }
  end

  def nome_da_track
    self.track.name
  end

  def authors_name
    self.document.users.name
  end

end

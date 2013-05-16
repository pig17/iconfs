class Event < ActiveRecord::Base
  attr_accessible :time, :title, :duration, :type

  belongs_to :room
  belongs_to :document
  belongs_to :track
  belongs_to :day
  belongs_to :user
  has_and_belongs_to_many :schedules

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

  def as_json(options)
    {
        :event => name,
        :duration => duration,
        :track  => {:name => name},
        :day => day,
        :time => time,
        :users => {:name => nome_dos_autores},
        :description => description

    }
  end

  def nome_dos_autores
    self.document.users.name
  end

  def correct_type
    unless ["keynote","workshop","paper presentation","poster presentation","social"].include? self.type
      errors.add(:type, "incorrect type")
    end
  end

end

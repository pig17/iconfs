class Event < ActiveRecord::Base
  attr_accessible :day_id, :time, :title, :duration, :document_id, :user_id, :room_id

  belongs_to :room
  belongs_to :document
  belongs_to :track
  belongs_to :day

  has_and_belongs_to_many :schedules

  validates :time, :room_id, :day_id, :title, :presence => true
  validates_uniqueness_of :time, :scope => [:room_id, :day_id]
  validates :document_id, :allow_blank => true
  validates :user_id, :allow_blank => true , :if => :session_false?
  validates :track_id, :allow_blank => true , :if => :session_false?

  def session_false?
      !:session
  end


end

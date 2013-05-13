class Event < ActiveRecord::Base
  attr_accessible :time, :title, :session, :description

  validates :time, :room_id, :day_id, :title, :presence => true
  validates_uniqueness_of :time, :scope => [:room_id, :day_id]
  validates :document_id, :allow_blank => true
  validates :user_id, :allow_blank => true , :if => :session_False?

  has_one :document
  has_one :user, :dependent => :destroy
  belongs_to :track, :foreign_key => :track_id
  belongs_to :room, :foreign_key => :room_id
  belongs_to :day, :foreign_key => :day_id
  has_and_belongs_to_many :schedules


  def session_False?
    :session == false
  end


end

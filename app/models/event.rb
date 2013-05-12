class Event < ActiveRecord::Base
  attr_accessible :time, :title, :document, :user

  validates :title, :presence => true, :uniqueness => true
  validates :time, :presence => true
  validates :room_id, :presence => true
  validates :user_id, :presence => true
  validates :day_id, :presence => true

  has_one :document
  has_one :user, :dependent => :destroy
  belongs_to :track, :foreign_key => :track_id
  belongs_to :room
  belongs_to :day
  has_and_belongs_to_many :schedules


end

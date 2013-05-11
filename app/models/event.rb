class Event < ActiveRecord::Base
  attr_accessible :time, :title, :document, :user

  belongs_to :room
  has_one :document
  belongs_to :day
  has_and_belongs_to_many :schedules

  validates :title, :presence => true, :uniqueness => true
  validates :time, :presence => true

  has_one :document  #belongs_to or has_on ??
  has_one :user, :dependent => :destroy
  belongs_to :track, :foreign_key => :track_id
  has_one  :room, :through => :events


end

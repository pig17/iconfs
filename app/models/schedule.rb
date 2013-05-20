class Schedule < ActiveRecord::Base
  attr_accessible :user_id

  belongs_to :user
  has_many :events, :through => :schedules_events


  validates :user_id, :presence => true, :uniqueness => true


end

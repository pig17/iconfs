class Meeting < ActiveRecord::Base
  attr_accessible :local, :message, :time

  has_many :users_meetings
  has_many :users, :through => :users_meetings

  validates :local, :presence => true
  validates :time, :presence => true


end

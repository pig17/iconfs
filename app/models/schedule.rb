class Schedule < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  has_and_belongs_to_many :events
  #has_many :days, :through => :events


end

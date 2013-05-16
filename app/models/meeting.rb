class Meeting < ActiveRecord::Base
  attr_accessible :local, :message, :time

  has_and_belongs_to_many :users

  #validates_presence_of :local, :time, :user_id
  #validates :message, :allow_blank => true

end

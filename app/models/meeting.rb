class Meeting < ActiveRecord::Base
  attr_accessible :local, :message, :time

  has_and_belongs_to_many :users

end
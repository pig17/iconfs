class Building < ActiveRecord::Base
  attr_accessible :name

  has_many :floors

  validates :name, :presence => true, :uniqueness => true

end

class Pi < ActiveRecord::Base
  attr_accessible :address, :contact, :coordX, :coordY, :description, :name, :typePI

  #validates_presence_of :name, :typePI, :coordX, :coordY
  #validates_uniqueness_of :name, :scope => [:coordX,:coordY]

end

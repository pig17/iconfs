class User < ActiveRecord::Base
  attr_accessible :aboutme, :available, :contact, :email, :facebook, :homepage,
                  :institution, :linkedin, :name, :sex, :twitter, :password, :imageurl

  has_many :notes
  has_and_belongs_to_many :documents
  has_one :schedule
  has_many :favourites
  has_and_belongs_to_many :meetings
  belongs_to :event

end

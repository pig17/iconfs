class User < ActiveRecord::Base
  attr_accessible :aboutme, :available, :contact, :email, :facebook, :homepage,
                  :institution, :linkedin, :name, :sex, :twitter

  has_many :notes
  has_and_belongs_to_many :documents
  has_one :schedule
  has_many :favourites
  has_many :meetings

end

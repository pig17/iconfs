class User < ActiveRecord::Base
  attr_accessible :aboutme, :available, :contact, :email, :facebook, :homepage,
                  :institution, :linkedin, :name, :sex, :twitter

  has_many :notes
  has_many :documents
end

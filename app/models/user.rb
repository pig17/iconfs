class User < ActiveRecord::Base
  attr_accessible :aboutme, :available, :contact, :email, :facebook, :homepage, :instituition, :linkedin, :name, :sex, :twitter

  has_many :note_id
  has_many :document_id
end

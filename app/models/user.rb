class User < ActiveRecord::Base
  attr_accessible :aboutme, :available, :contact, :email, :facebook, :homepage, :instituition, :linkedin, :name, :sex, :twitter
end

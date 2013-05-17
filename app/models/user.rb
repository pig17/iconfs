class User < ActiveRecord::Base
  attr_accessible :aboutme, :available, :contact, :email, :facebook, :homepage,
                  :institution, :linkedin, :name, :sex, :twitter, :password, :image

  has_many :notes
  has_many :favourites
  has_and_belongs_to_many :documents
  has_one :schedule
  has_and_belongs_to_many :meetings
  has_many :events


  def as_json(options)
    {
        :name => name,
        :password => password,
        :sex => sex,
        :image => image,
        :available => available,
        :email => email,
        :facebook => facebook,
        :twitter => twitter,
        :linkedin => linkedin,
        :homepage => homepage,
        :institution => institution,
        :contact =>  contact,
        :aboutme => aboutme,
    }
  end

end

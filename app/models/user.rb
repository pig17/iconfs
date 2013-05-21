class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :aboutme, :available, :contact, :facebook, :homepage,
                  :institution, :linkedin, :name, :sex, :twitter, :user_photo

  has_one :schedule
  has_many :notes
  has_many :favourites
  has_many :events
  has_many :users_meetings
  has_many :users_documents
  has_many :documents, :through => :users_documents
  has_many :meetings, :through => :users_meetings

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i

  validates :available, :presence => true
  validates :email, :presence => true, :uniqueness =>true, :format => EMAIL_REGEX
  validates :name, :presence => true
  validates :sex, :presence => true

def as_json(options)
    {
        :name => name,
        :sex => sex,
        :image => user_photo,
        :available => available,
        :email => email,
        :facebook => facebook,
        :twitter => twitter,
        :linkedin => linkedin,
        :homepage => homepage,
        :institution => institution,
        :contact =>  contact,
        :aboutme => about_me,
        :notes => { :title => notes_title,
                    :shared => notes_shared},
        :documents => { :title => documents_title,
                        :link => documents_link }

    }
end

  def notes_title
    self.notes.title
  end

  def notes_shared
    self.notes.shared
  end

  def documents_title
    self.users_documents.document.title
  end

  def documents_link
    self.users_documents.document.link
  end

  
end

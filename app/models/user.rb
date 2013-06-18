class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :aboutme, :available, :contact, :email, :facebook, :homepage,
                  :institution, :linkedin, :name, :sex, :twitter, :user_photo, :photo_link

  before_save :ensure_authentication_token

  mount_uploader :user_photo, PhotoUploader, mount_on: :photo_link

  has_one :schedule
  has_many :notes, :order => "updated_at DESC"
  has_many :favourites, :order => "updated_at DESC"
  has_many :events
  has_many :users_documents
  has_many :users_meetings
  has_many :documents, :through => :users_documents
  has_many :meetings, :through => :users_meetings

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i

  validates :available, :presence => true
  validates :email, :presence => true, :uniqueness =>true, :format => EMAIL_REGEX
  validates :name, :presence => true
  validates :sex, :presence => true

  def as_json(options={})
    super(
        :except => [:created_at, :updated_at, :meeting_id, :id]
    )
  end

end

class Document < ActiveRecord::Base
  attr_accessible :link, :title

  belongs_to :session, :foreign_key => :session_id
  has_many :users, :dependent => :destroy

  validates :link , :presence => true , :uniqueness => true
  validates :title , :presence => true #, :uniqueness => true
end

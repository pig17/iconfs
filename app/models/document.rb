class Document < ActiveRecord::Base
  attr_accessible :link, :title

  belongs_to :session
  has_and_belongs_to_many :users, :dependent => :destroy

  validates :link , :presence => true , :uniqueness => true
  validates :title , :presence => true #, :uniqueness => true
end

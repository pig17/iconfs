class Document < ActiveRecord::Base
  attr_accessible :link, :title

  has_one :event
  has_many :favourite
  has_and_belongs_to_many :users



  validates :link , :presence => true , :uniqueness => true
  validates :title , :presence => true #, :uniqueness => true
end

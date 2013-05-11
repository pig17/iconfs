class Document < ActiveRecord::Base
  attr_accessible :link, :title

  belongs_to :event
  has_and_belongs_to_many :users

  belongs_to :favourite

  validates :link , :presence => true , :uniqueness => true
  validates :title , :presence => true #, :uniqueness => true
end

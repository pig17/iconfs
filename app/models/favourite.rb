class Favourite < ActiveRecord::Base
  attr_accessible :title

  belongs_to :user
  belongs_to :document

  validates :title, :presence => true
  validates :user_id, :presence => true
  validates :document_id, :presence => true

  # Each title appears only one time per user
  validates_uniqueness_of :title, :scope => :user_id

end

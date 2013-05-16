class Floor < ActiveRecord::Base
  attr_accessible :name, :building_id, :plan_photo

  has_many :rooms
  belongs_to :building

  validates :name, :presence => true
  validates :plan_photo, :presence => true
  validates :building_id, :presence => true
  # Each floor name appears only one time per building
  validates_uniqueness_of :name, :scope => :building_id


end

class Note < ActiveRecord::Base
  attr_accessible :shared, :text, :title, :user_id, :updated_at

  belongs_to :user

  validates :title, :user_id, :presence=>true
  validates_uniqueness_of :user_id, :scope => :title

  def as_json(options={})
  super(
     :except => [:created_at]
  )
  end
end

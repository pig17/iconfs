class Favourite < ActiveRecord::Base
  attr_accessible :title, :document_id, :user_id

  belongs_to :user
  belongs_to :document

  validates :title, :presence => true
  validates :user_id, :presence => true
  validates :document_id, :presence => true

  # Each title appears only one time per user
  validates_uniqueness_of :title, :scope => :user_id

  # Each document appears only one time per user
  validates_uniqueness_of :document_id, :scope => :user_id

  def as_json(options={})
    super(
        :except => [:created_at,:updated_at, :document_id],
        include:{ document: {:except => [:id, :created_at, :user_id, :updated_at]}}
    )
  end

end

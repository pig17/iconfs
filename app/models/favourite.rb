class Favourite < ActiveRecord::Base
  attr_accessible :title

  belongs_to :user
  belongs_to :document

  validates :title, :presence => true
  validates :user_id, :presence => true
  validates :document_id, :presence => true

  # Each title appears only one time per user
  validates_uniqueness_of :title, :scope => :user_id

  # Each document appears only one time per user
  validates_uniqueness_of :document_id, :scope => :user_id

  def as_json(options)
    {
        :title => title,
        :user => {:name => name_user},
        :document => {:titleDoc => title_document}
    }
  end

  def name_user
    self.user.name
  end

  def title_document
    self.document.title
  end

  def nome_dos_autores
    self.document.users.name
  end

end

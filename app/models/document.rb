class Document < ActiveRecord::Base
  attr_accessible :link, :title

  has_one :event
  has_many :favourite
  has_and_belongs_to_many :users

  validates :link, :presence => true
  validates :title, :presence => true
  #validates :user_id, :presence => true      ALTERAR CASO NAO HAJA DOCUMENTOS SOCIAIS(docs sem autores)

  # Each title appears only one time per user
  validates_uniqueness_of :title, :scope => :user_id

end

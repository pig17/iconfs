class Document < ActiveRecord::Base
  attr_accessible :link, :title, :data

  has_one :event
  has_many :favourites
  has_many :users_documents
  has_many :users, :through => :users_documents

  mount_uploader :data, DocsUploader, mount_on: :link

  # validates :link, :presence => true  #http://res.cloudinary.com/iconfs/docs/ + original_filename
  validates :data, :presence => true
  validates :title, :presence => true, :uniqueness => true
  #validates :user_id, :presence => true      ALTERAR CASO NAO HAJA DOCUMENTOS SOCIAIS(docs sem autores)


  def as_json(options={})
    super(
        :except => [:created_at,:updated_at]
    )
  end

end

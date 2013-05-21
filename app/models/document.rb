class Document < ActiveRecord::Base
  attr_accessible :link, :title

  has_one :event
  has_many :favourites
  has_many :users_documents
  has_many :users, :through => :users_documents

  validates :link, :presence => true
  validates :title, :presence => true, :uniqueness => true
  #validates :user_id, :presence => true      ALTERAR CASO NAO HAJA DOCUMENTOS SOCIAIS(docs sem autores)

    def as_json(options)
    {
        :Title => title,
        :link => link
    }
  end

  def self.save(upload)
    name =  upload['document'].original_filename
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['document'].read) }
  end




end

class Document < ActiveRecord::Base
  attr_accessible :link, :title

  has_one :event
  has_many :favourite
  has_and_belongs_to_many :users

  validates :link , :presence => true , :uniqueness => true
  validates :title , :user_id, :presence => true


  def self.save(upload)
    directory = 'public/data'
    # create the file path
    path = File.join(directory,:title)
    # write the file
    File.open(path, 'wp') { |f| f.write(upload['datafile'].read)}
  end

end

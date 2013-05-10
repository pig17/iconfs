class Document < ActiveRecord::Base
  attr_accessible :link, :title

  belongs_to :session, :foreign_key => :session_id
  has_many :users, :dependent => :destroy
end

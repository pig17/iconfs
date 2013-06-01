class Note < ActiveRecord::Base
  attr_accessible :shared, :text, :title, :user_id

  belongs_to :user, :foreign_key => :user_id

  validates :title, :presence=>true, :uniqueness=>true
  validates :user_id, :presence=>true, :uniqueness=>true
  validates :shared, :presence=>true
  validates :text, :presence=>true

  def to_json(options)
    super(
        :only => [:title, :shared, :text]
    )
   end

end

class Note < ActiveRecord::Base
  attr_accessible :shared, :text, :title

  belongs_to :user

  validates :title, :presence=>true, :uniqueness=>true
  validates :user_id, :presence=>true, :uniqueness=>true
  validates :shared, :presence=>true
  validates :text, :presence=>true

  def as_json(options)
    {
        :title => title,
        :shared => shared,
        :text  => text
    }
  end

end

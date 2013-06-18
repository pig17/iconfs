class Meeting < ActiveRecord::Base
  attr_accessible :local, :message, :time

  has_many :users, :through => :users_meetings

  validates :local, :presence => true
  validates :time, :presence => true

  def as_json(options={})
    super(
        :except => [:created_at, updated_at],
        include:{ users: { :only => [:name, :id, :photo_link] }}
    )
  end

end

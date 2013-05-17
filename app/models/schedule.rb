class Schedule < ActiveRecord::Base
  #attr_accessible :title, :body

  belongs_to :user
  has_and_belongs_to_many :events
  #has_many :days, :through => :events


  def as_json(options)
    {
        :events =>{
            :event => name,
            :duration => duration,
            :track  => {:name => name},
            :day => day,
            :time => time}

    }
  end


end

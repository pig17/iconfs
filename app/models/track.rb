class Track < ActiveRecord::Base
  attr_accessible :name

  has_many :events
  has_many :days, :through => :events

  validates :name, :presence => true, :uniqueness => true

  def as_json(options)
    {
        :track => name,
        :events =>{:name => name,
                   :duration => duration,
                   :day => day,
                   :time => time,
                   :users => {:name => nome_dos_autores},
                   :description => description}

    }
  end

end

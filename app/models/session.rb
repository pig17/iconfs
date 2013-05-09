class Session < ActiveRecord::Base
  attr_accessible :time, :title, :track

  belongs_to :room_id
end

class UsersMeeting < ActiveRecord::Base
  attr_accessible :meeting_id, :user_id, :status

  belongs_to :user
  belongs_to :meeting

end

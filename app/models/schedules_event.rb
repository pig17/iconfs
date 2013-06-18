class SchedulesEvent < ActiveRecord::Base
  attr_accessible :event_id, :schedule_id

  belongs_to :schedule
  belongs_to :event

end

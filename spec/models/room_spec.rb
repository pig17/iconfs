# spec/models/room_spec.rb
require 'spec_helper'

describe Room do

  it "does not allow duplicate rooms per floor"  do
    floor = FactoryGirl.create(:floor)
    FactoryGirl.create(:room,floor: floor)
    FactoryGirl.build(:room,floor: floor).should_not be_valid
  end

  it "does not allow duplicate floors per coords"  do
    FactoryGirl.create(:room, name:"ze")
    FactoryGirl.build(:room, name:"joao").should_not be_valid
  end

end
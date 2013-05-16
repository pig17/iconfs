# spec/models/floor_spec.rb
require 'spec_helper'

describe Floor do
  it "is invalid without a name" do
    FactoryGirl.build(:floor, name: nil).should_not be_valid
  end

  it "is invalid without a building_id"  do
    FactoryGirl.build(:floor, building_id: nil).should_not be_valid
  end

  it "does not allow duplicate floors per building"  do
    build = FactoryGirl.create(:building)
    FactoryGirl.create(:floor, name:"ze",building: build)
    FactoryGirl.build(:floor, name:"ze",building: build).should_not be_valid
  end

end
# spec/models/building_spec.rb
require 'spec_helper'

describe Building do
  it "is invalid without a name" do
    FactoryGirl.build(:building, name: nil).should_not be_valid
  end
  it "is invalid if name is duplicated"  do
    FactoryGirl.create(:building, name: "ze")
    FactoryGirl.build(:building, name: "ze").should_not be_valid
  end

end
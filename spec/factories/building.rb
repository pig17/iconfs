# spec/factories/building.rb
require 'faker'

FactoryGirl.define do
  factory :building do |f|
    f.name { Faker::Name.name }
  end
end
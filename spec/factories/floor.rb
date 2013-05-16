# spec/factories/floor.rb
require 'faker'

FactoryGirl.define do
  factory :floor do |f|
    f.name { Faker::Name.name }
    f.building_id 1
    f.plan_photo { Faker::Lorem.word }
  end
end
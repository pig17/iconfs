# spec/factories/room.rb
require 'faker'

FactoryGirl.define do
  factory :room do |f|
    f.name "ze"
    f.capacity 50
    f.coordX 3.20
    f.coordY 4.20
    f.event_id 1
    f.floor_id 1
  end
end
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :housing_complex do
    address "MyText"
    on_bus_line false
    exclusions "MyText"
  end
end

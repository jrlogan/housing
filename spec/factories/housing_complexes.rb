# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :housing_complex do
    address "205 Elm St, New Haven, 06520 CT"
    on_bus_line { [true, false].sample }
    exclusions "We don't accept any people with purple hair."
  end
end

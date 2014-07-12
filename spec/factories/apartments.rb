# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :apartment do
    rent 1
    floor 1
    max_capacity 1
    pets_allowed false
    wheelchair_accessible "MyString"
    smoking false
    information "MyText"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :apartment do
    rent 1000
    floor 1
    max_capacity 3
    pets_allowed false
    wheelchair_accessible "Maybe" # Yes, No, Maybe
    smoking false
    information "This is an apartment from heaven."
  end
end

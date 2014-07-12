# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :apartment do
    rent { rand 300..1200 }
    floor { rand 1..5 }
    max_capacity { rand 1..4 }
    pets_allowed { [true, false].sample }
    wheelchair_accessible { %w(Yes No Maybe).sample } # Yes, No, Maybe
    smoking { [true, false].sample }
    information "This is an apartment from heaven."
    housing_complex { FactoryGirl.create(:housing_complex) }
  end
end

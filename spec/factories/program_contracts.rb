# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program_contract do
    program { FactoryGirl.create(:program) }
    housing_complex { FactoryGirl.create(:housing_complex) }
  end
end

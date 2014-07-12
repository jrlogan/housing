FactoryGirl.define do
  sequence(:email) { |n| "test_#{n}@example.com" }

  factory :user do
    confirmed_at Time.now
    name "Test User"
    email
    password "please123"
  end
end

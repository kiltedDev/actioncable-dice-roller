FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "MistaU#{n}@musicmail.com" }
    sequence(:username) { |n| "StarChild#{n}" }
    password "Steven"
  end
end

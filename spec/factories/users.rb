FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "#{n}yelling@link.com" }
    sequence(:username) { |n| "brightFairy#{n}" }
    password "Listen"
  end

  trait :link do
    sequence(:username) { |n| "TigerMillionaire#{n}" }
  end
end

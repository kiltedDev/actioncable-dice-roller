FactoryGirl.define do
  factory :table do
    sequence(:name) { |n| "Kokiri#{n}" }
  end
end

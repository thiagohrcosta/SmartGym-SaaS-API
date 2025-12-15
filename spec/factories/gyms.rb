FactoryBot.define do
  factory :gym do
    name { 'SmartGym' }
    billing_status { 'trial' }
    active { true }
    association :plan
  end
end

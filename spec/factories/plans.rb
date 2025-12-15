FactoryBot.define do
  factory :plan do
    name { 'Basic' }
    description { 'Basic plan' }
    price_cents { 10000 }
  end
end

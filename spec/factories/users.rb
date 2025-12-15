FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Internet.username }
    password { 'password123' }
    role { 'gym_admin' }
    association :gym
  end

  factory :super_admin, parent: :user do
    role { 'super_admin' }
    gym { nil }
  end
end

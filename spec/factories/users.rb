FactoryBot.define do
  factory :user do
    nickname { Faker::Lorem.characters(number: 10) }
    email { Faker::Internet.email }
    profile { Faker::Lorem.characters(number: 20) }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
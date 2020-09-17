FactoryBot.define do
  factory :diary do
    body { Faker::Lorem.characters(number: 20) }
    user
  end
end
require 'faker'

FactoryBot.define do

  factory :phonebook do
      user_id Faker::Number.digit
      name Faker::Name.name
      number Faker::Number.number(10)
  end

  factory :user do
    email Faker::Internet.email
    password Faker::Internet.password
end

  

end

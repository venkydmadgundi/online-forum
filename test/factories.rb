FactoryBot.define do
  factory :user do
    name { "Test User" }
    email  { "user@example.com" }
    password { "password" }
  end
end
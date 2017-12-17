FactoryBot.define do
  factory :user do
    sequence(:name) {|n| "Name#{n}"}
    sequence(:email) {|n| "Email#{n}"}
    sequence(:password) {|n| "Password#{n}"}
  end
end

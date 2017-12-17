FactoryBot.define do
  factory :idea do
    sequence(:idea) {|n| "Idea#{n}"}
    user
  end
end

FactoryBot.define do
  factory :idea do
    sequence(:title) {|n| "Title#{n}"}
    sequence(:idea) {|n| "Idea#{n}"}
    user
    category
  end
end

require 'rails_helper'

describe "User see all ideas" do
  scenario "a user sees all ideas" do
    user = User.create!(name: "Joe", email: "joe@gmail.com", password: "joe123")
    idea1 = user.ideas.create!(idea: "Have a Christmas Party on Friday")
    idea2 = user.ideas.create!(idea: "Throw a birthday party for the dog")

    visit user_ideas_path(user)

    expect(page).to have_content(idea1.idea)
    expect(page).to have_content(idea2.idea)
  end
end

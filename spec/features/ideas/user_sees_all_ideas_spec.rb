require 'rails_helper'

describe "User see all ideas" do
  scenario "a user sees all ideas" do
    user = User.create!(name: "Joe", email: "joe@gmail.com", password: "joe123")
    idea1 = user.ideas.create!(title: "Christmas", idea: "Have a Christmas Party on Friday")
    idea2 = user.ideas.create!(title: "Dog Birthday", idea: "Throw a birthday party for the dog")

    visit user_ideas_path(user)

    expect(page).to have_content(idea1.title)
    expect(page).to have_content(idea1.idea)
    expect(page).to have_content(idea2.title)
    expect(page).to have_content(idea2.idea)

  end
end

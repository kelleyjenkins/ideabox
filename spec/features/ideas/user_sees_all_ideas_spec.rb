require 'rails_helper'

describe "User see all ideas" do
  scenario "a user sees all ideas" do
    idea1 = Idea.create(idea: "Have a Christmas Party on Friday")
    idea2 = Idea.create(idea: "Throw a birthday party for the dog")

    visit ideas_path

    expect(page).to have_content(idea1.idea)
    expect(page).to have_content(idea2.idea)
  end
end

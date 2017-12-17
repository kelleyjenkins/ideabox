require 'rails_helper'

describe "User creates a new idea" do
  scenario "a user creates a new idea" do

    user = User.create!(name: "Joe", email: "joe@gmail.com", password: "joe123")

    visit new_user_idea_path(user)

    fill_in "idea[idea]", with: "I have a brilliant idea!"

    click_on "Create Idea"

    expect(current_path).to eq("/users/#{user.id}/ideas")
    expect(page).to have_content("I have a brilliant idea!")
  end
end

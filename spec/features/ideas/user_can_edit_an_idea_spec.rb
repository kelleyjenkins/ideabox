require 'rails_helper'

describe "User can edit an existing idea" do
  scenario "a user can edit their own ideas" do
  user = create(:user)
  idea = create(:idea)

  visit edit_user_idea_path(user, idea)

  fill_in "idea[title]", with: "New Idea"
  click_button "Update"

  expect(page).to have_content("New Idea")
  end
end

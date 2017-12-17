require 'rails_helper'

describe "User sees one idea" do
  scenario "a user sees a single one of their ideas" do

  user = create(:user)
  idea1, idea2 = create_list(:idea, 2)

  visit user_idea_path(user, idea1)

  expect(page).to have_content(idea1.title)
  expect(page).to have_content(idea1.idea)
  expect(page).to_not have_content(idea2.title)
  expect(page).to_not have_content(idea2.idea)
end
end

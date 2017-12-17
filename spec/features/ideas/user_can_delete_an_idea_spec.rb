require 'rails_helper'

describe "User can delete an idea" do
  scenario "user can delete one of their own ideas" do
    user = create(:user)
    idea = user.ideas.create!(idea: "another idea")

    visit user_ideas_path(user)

    save_and_open_page
    click_link "Delete"

    expect(page).to_not have_content("#{idea.idea}")
  end
end

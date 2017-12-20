require 'rails_helper'

describe "User can delete an idea" do
  scenario "user can delete one of their own ideas" do
     user = create(:user)
     category = create(:category)
    idea = create(:idea, user: user, category: category)


    visit user_ideas_path(user)

    click_link "Delete"

    expect(page).to_not have_content("#{idea.title}")
    expect(page).to_not have_content("#{idea.idea}")
  end
end

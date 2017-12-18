require 'rails_helper'

describe "User see all ideas" do
  scenario "a user sees all ideas" do
    user = create(:user)
    category1, category2 = create_list(:category, 2)
    idea1 = create(:idea, category: category1, user: user)
    idea2 = create(:idea, category: category2, user: user)

    visit user_ideas_path(user)

    expect(page).to have_content(idea1.title)
    expect(page).to have_content(idea1.idea)
    expect(page).to have_content(idea2.title)
    expect(page).to have_content(idea2.idea)
  end
end

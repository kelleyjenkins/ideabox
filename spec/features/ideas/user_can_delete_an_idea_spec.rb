require 'rails_helper'

describe "User can delete an idea" do
  scenario "user can delete one of their own ideas" do
    user = create(:user)
    category = create(:category)
    idea = user.ideas.create!(title: "Idea Two", idea: "another idea", category_id: category.id)

    visit user_ideas_path(user)

    click_link "Delete"

    expect(page).to_not have_content("#{idea.title}")
    expect(page).to_not have_content("#{idea.idea}")
  end
end

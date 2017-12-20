require 'rails_helper'

describe "Admin edits an existing category" do
  scenario "an admin can edit a category" do
    admin = create(:user, role: 1)
    category = create(:category)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit edit_admin_category_path(category)

    fill_in "category[name]", with: "Budget"
    click_button "Update"

    expect(current_path).to eq(admin_categories_path)
    expect(page).to have_content("Budget")
    expect(page).to_not have_content("#{category.name}")
  end
end

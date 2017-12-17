require 'rails_helper'

describe "Admin creates a new category" do
  scenario "an admin can create a new category" do
    visit new_admin_category_path

    fill_in "category[name]", with: "Parties"
    click_button "Create"

    expect(current_path).to eq(admin_categories_path)
    expect(page).to have_content("Parties")
    expect(Category.count).to eq(1)
  end
end

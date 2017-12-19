require 'rails_helper'

describe "Admin creates a new category" do
  scenario "an admin can create a new category" do
    admin = create(:user, role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit new_admin_category_path

    fill_in "category[name]", with: "Parties"
    click_button "Create"

    expect(current_path).to eq(admin_categories_path)
    expect(page).to have_content("Parties")
    expect(Category.count).to eq(1)
  end
end

require 'rails_helper'

describe "Admin user sees all categories" do
  scenario "admin can see all categories" do
    admin = create(:user, role: 1)
    category1, category2 = create_list(:category, 2)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_categories_path

    expect(page).to have_content(category1.name)
    expect(page).to have_content(category2.name)
  end
end

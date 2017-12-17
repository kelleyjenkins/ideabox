require 'rails_helper'

describe "Admin user sees all categories" do
  scenario "admin can see all categories" do

    category1, category2 = create_list(:category, 2)

    visit admin_categories_path

    expect(page).to have_content(category1.name)
    expect(page).to have_content(category2.name)
  end
end

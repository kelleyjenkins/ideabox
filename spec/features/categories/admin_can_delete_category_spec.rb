require 'rails_helper'

describe "Admin deletes existing category" do
  scenario "an admin can delete a category" do
    category = create(:category)

    visit admin_categories_path

    click_link "Delete"

    expect(page).to_not have_content("#{category.name}")
  end
end

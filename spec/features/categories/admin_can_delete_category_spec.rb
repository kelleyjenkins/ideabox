require 'rails_helper'

describe "Admin deletes existing category" do
  scenario "an admin can delete a category" do
    admin = create(:user, role: 1)
    category1, category2 = create(:category)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_categories_path

    click_link "Delete"

    expect(page).to_not have_content("#{category1.name}")
  end
end

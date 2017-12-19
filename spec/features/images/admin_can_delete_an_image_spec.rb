require 'rails_helper'

describe "Admin can delete an image" do
  scenario "admin can delete an image from index" do
    admin = create(:user, role: 1)
    image = create(:image)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_images_path

    click_link "Delete"

    expect(page).to_not have_content("#{image.name}")
    expect(page).to_not have_content("#{image.url}")
  end
end

require 'rails_helper'

describe "Admin can delete an image" do
  scenario "admin can delete an image from index" do
     image = create(:image)


    visit admin_images_path

    click_link "Delete"

    expect(page).to_not have_content("#{image.name}")
    expect(page).to_not have_content("#{image.url}")
  end
end

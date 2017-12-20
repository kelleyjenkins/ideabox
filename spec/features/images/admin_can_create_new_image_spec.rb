require 'rails_helper'

describe "Admin creates a new image" do
  scenario "an admin can create a new image" do
    visit new_admin_image_path

    fill_in "image[name]", with: "Dog"
    fill_in "image[url]", with: "https://images.pexels.com/photos/59523/pexels-photo-59523.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb"
    click_button "Create"


    expect(current_path).to eq(admin_images_path)
    expect(page).to have_content("Dog")
    expect(page).to have_css("img[src='https://images.pexels.com/photos/59523/pexels-photo-59523.jpeg?h=350&dpr=2&auto=compress&cs=tinysrgb']")
    expect(Image.count).to eq(1)
  end
end

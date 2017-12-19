require 'rails_helper'

describe "user visits images index page" do
  context "as an admin" do
    it "allows admin to see all images" do
      admin = create(:user, role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_images_path

      expect(page).to have_content("Admin Images")
    end
  end
end

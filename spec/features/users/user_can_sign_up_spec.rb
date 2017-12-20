require 'rails_helper'

describe "User signs up for account" do
  context "they visit the root page" do
    context "they click on registration link" do
      context "they fill in registration form" do
        it "a new user account is created" do
          visit "/"

          click_on "Register"

          expect(current_path).to eq(new_user_path)

          fill_in "user[name]", with: "Joe"
          fill_in "user[email]", with: "joe@gmail.com"
          fill_in "user[password]", with: "test"

          click_on "Create User"

          expect(page).to have_content("Welcome, Joe!")
        end
      end
    end
  end
end

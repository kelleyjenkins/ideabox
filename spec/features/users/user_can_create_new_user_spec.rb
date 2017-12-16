require 'rails_helper'

describe "User can register as a user" do
  scenario "user registers as user" do

    visit new_user_path

    fill_in "user[name]", with: "Joe"
    fill_in "user[email]", with: "joe@gmail.com"
    fill_in "user[password]", with: "joe123"

  end
end

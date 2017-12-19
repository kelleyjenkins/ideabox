# require 'rails_helper'
#
# describe "User can add an image to an idea" do
#   context "a user creates a new idea" do
#     context "a user selects an image" do
#       it "idea has "
#     end
#     user = create(:user)
#     category = create(:category)
#
#     visit new_user_idea_path(user)
#
#     fill_in "idea[title]", with: "First Idea"
#     fill_in "idea[idea]", with: "I have a brilliant idea!"
#     select category.name, from: "idea[category_id]"
#
#     click_on "Create Idea"
#
#     expect(current_path).to eq("/users/#{user.id}/ideas")
#     expect(page).to have_content("First Idea")
#     expect(page).to have_content("I have a brilliant idea!")
#     expect(page).to have_content(category.name)
#   end
# end

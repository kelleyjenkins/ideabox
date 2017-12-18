require "rails_helper"

describe Idea, type: :model do
  describe "validations" do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:idea)}
  end

  describe "relationships" do
    it {should have_many(:images).through(:idea_images)}

  end
end

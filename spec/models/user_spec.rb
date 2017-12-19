require "rails_helper"

describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:password)}
  end

  describe "relationships" do
    it {should have_many(:ideas)}
  end
end

describe User do
    it "can be created as an admin" do
      user = create(:user, role: 1)

      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end
end

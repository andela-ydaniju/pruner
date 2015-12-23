require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) do
    build(:user)
  end

  context "when initialized" do
    it "is not valid when username is more than fifty characters" do
      user.username = "me" * 50
      expect(user.valid?).to be false
    end

    it "is not valid when email is more than thirty characters" do
      user.email = "me" * 30 + "@yahoo.com"
      expect(user.valid?).to be false
    end

    it "is not valid when any field is not entered" do
      user.username = nil
      expect(user.valid?).to be false
    end

    it "is not valid when any field is not entered" do
      user.email = nil
      expect(user.valid?).to be false
    end

    it "has email which is case insensitive and unique" do
      user.email = "A-_J@a.CoM"
      duplicate_user = user.dup
      duplicate_user.email = user.email.downcase
      expect(duplicate_user.valid?).to be true
    end

    it "has a password which must be entered" do
      user.password = user.password_confirmation = nil
      expect(user.valid?).to be false
    end

    it "has a password which must be eight chars or greater" do
      user.password = user.password_confirmation = "abeokut"
      expect(user.valid?).to be false
    end
  end

  # context "when destroyed" do
  #   new_user = User.new(
  #     username: "Example User",
  #     email: "user@example.com",
  #     password: "foobarbaz",
  #     password_confirmation: "foobarbaz"
  #   )
  #   it "has its associated links destroyed, too" do
  #     new_user.save
  #     new_user.links.create!(name: "www.goal.com")
  #     expect { new_user.destroy }.to change { Link.count }.by(-1)
  #   end
  # end
end

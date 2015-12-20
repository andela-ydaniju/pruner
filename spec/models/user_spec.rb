require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) do
    User.new(
      username: "andela-ydaniju",
      email: "yusuf.daniju@andela.com"
    )
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

    it "has email which is case insensitive" do
      user.email = "AJ@a.CoM"
      expect(user.valid?).to be true
    end
  end
end

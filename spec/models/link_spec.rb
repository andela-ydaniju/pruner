require "rails_helper"

RSpec.describe Link, type: :model do
  let(:link) do
    build(:link)
  end
  context "when initialized" do
    it "should have name attribute" do
      expect(link.name.class).to be String
    end
  end
end

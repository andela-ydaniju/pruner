# == Schema Information
#
# Table name: links
#
#  id             :integer          not null, primary key
#  url_input      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  shortened_link :string
#  user_id        :integer
#  visits         :integer
#  enabled        :boolean          default(TRUE)
#  erased         :boolean
#

require "rails_helper"

RSpec.describe Link, type: :model do
  let(:link) do
    build(:link)
  end
  context "when initialized" do
    it "should have url_input attribute" do
      expect(link.url_input.class).to be String
    end

    it "rejects wrong url_input" do
      link.url_input = "www@gmail.com"
      expect(link).to be_invalid
    end
  end
end

# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  remember_digest :string
#  links_count     :integer          default(0)
#

require "rails_helper"
RSpec.describe UsersController, type: :controller do
  context "signup" do
    it "render signup template." do
      get :signup
      expect(response).to render_template("signup")
    end
  end
end

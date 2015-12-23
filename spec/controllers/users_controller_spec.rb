require "rails_helper"
RSpec.describe UsersController, type: :controller do
  FactoryGirl.create(:user)

  context "signup" do
    it "render signup template" do
      get :signup
      expect(response).to render_template("signup")
    end
  end
end

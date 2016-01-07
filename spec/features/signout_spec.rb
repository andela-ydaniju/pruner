require "rails_helper"
describe "the signout process", type: :feature do
  before :each do
    User.create(
      username: "kabouli",
      email: "user@example.com",
      password: "password",
      password_confirmation: "password"
    )
  end

  it "signs me in if entry is valid" do
    visit "/sessions/new"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"

    click_button "Sign In"
    click_link "Sign Out"
    expect(page).to have_content "Mobile Friendly"
  end
end

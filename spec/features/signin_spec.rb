require "rails_helper"
describe "the signin process", type: :feature do
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
    expect(page).to have_content "Welcome"
  end

  it "doesn't signs me in if entry is invalid" do
    visit "/sessions/new"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "passworded"

    click_button "Sign In"
    expect(page).to have_content "Invalid"
  end

  it "links to signup page" do
    visit "/sessions/new"
    click_link "Please Sign Up"
    expect(page).to have_content "If you got an account, please Sign In"
  end
end

require "rails_helper"
describe "the link edit process", type: :feature do
  before :each do
    User.create(
      username: "kabouli",
      email: "user@example.com",
      password: "password",
      password_confirmation: "password"
    )
  end

  it "change target and status of link" do
    visit "/sessions/new"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"

    click_button "Sign In"

    within ".field1" do
      find("input").set "www.userexample.com"
    end
    click_button "Prune Me"
    click_link "Link Details"
    fill_in "Change Url", with: "http://facebook.come"
    click_button "Update"

    expect(page).to have_content "Link updated"
  end
end

require "rails_helper"
describe "the link deletion process", type: :feature do
  before :each do
    User.create(
      username: "kabouli",
      email: "user@example.com",
      password: "password",
      password_confirmation: "password"
    )
  end

  it "deletes link" do
    visit "/sessions/new"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"

    click_button "Sign In"
    within ".field1" do
      find("input").set "www.userexample.com"
    end
    click_button "Prune Me"
    first(".card").click_link "Delete"
    expect(page).to have_content "Link successfully destroyed"
  end
end

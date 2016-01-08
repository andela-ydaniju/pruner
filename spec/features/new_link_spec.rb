require "rails_helper"
describe "the link creation process", type: :feature do
  before :each do
    User.create(
      username: "kabouli",
      email: "user@example.com",
      password: "password",
      password_confirmation: "password"
    )
  end

  it "creates new link without vanity string" do
    visit "/"
    within ".field" do
      find("input").set "www.userexample.com"
    end
    click_button "Prune Me"
    expect(page).to have_content "less than a minute ago"
  end

  it "rejects bad urls" do
    visit "/"
    within ".field" do
      find("input").set "user@example.com"
    end
    click_button "Prune Me"
    expect(page).to have_content "Mobile Friendly"
  end

  it "creates new link with vanity string" do
    visit "/sessions/new"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"

    click_button "Sign In"
    within ".field1" do
      find("input").set "www.userexample.com"
    end
    within ".field2" do
      find("input").set "mmm"
    end
    click_button "Prune Me"
    expect(page).to have_content "mmm"
  end

end

require "rails_helper"
describe "the link creation process", type: :feature do
  before :each do
    Link.create(
      name: "www.userexample.com"
    )
  end

  it "creates new link" do
    visit "/"
    within ".field" do
      find("input").set "www.userexample.com"
    end
    click_button "Prune Me"
    expect(page).to have_content "less than a minute ago"
  end
end

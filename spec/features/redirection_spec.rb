require "rails_helper"
describe "the redirction process" do
  it "redirect to actual url" do
    visit "/"
    within ".field" do
      find("input").set "www.almossawi.com"
    end
    click_button "Prune Me"
    find("#act").click
    expect(page).to have_content "almossawi"
  end
end

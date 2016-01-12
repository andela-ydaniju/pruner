# require "rails_helper"
# describe "the redirction process" do
#   it "redirect to actual url" do
#     sign_up_with "omonla", "valid@example.com", "password", "password"
#     visit "/sessions/new"
#     fill_in "Email", with: "valid@example.com"
#     fill_in "Password", with: "password"

#     click_button "Sign In"
#     within ".field1" do
#       find("input").set "http://almossawi.com"
#     end
#     within ".field2" do
#       find("input").set "mmm"
#     end
#     click_button "Prune Me"
#     click_link("linked")
#     expect(page).to have_content "like to create"
#   end
# end

# require "rails_helper"

# describe "the redirction process" do
#   before(:all) do
#     User.destroy_all
#     Link.destroy_all
#   end

#   it "redirect to actual url", js: true do
#     sign_up_with "omonla", "valid@example.com", "password", "password"
#     within ".field1" do
#       find("input").set "http://almossawi.com"
#     end
#     within ".field2" do
#       find("input").set "mmm"
#     end
#     click_button "Prune Me"
#     visit "/mmm"
#     expect(page).to have_content "like to create"
#   end
# end

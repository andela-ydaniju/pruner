require "rails_helper"
describe "the signup process", type: :feature do
  it "signs me up if entry is valid" do
    sign_up_with "omonla", "valid@example.com", "password", "password"
    expect(page).to have_content "Welcome"
  end

  it "doesn't signs me up if entry is invalid" do
    sign_up_with "omonla", "valid@example.com", "password", "passworde"
    expect(page).to have_content "If you got an account, please Sign In"
  end

  it "links to signin page" do
    visit signup_path
    click_link "please Sign In"
    expect(page).to have_content "Don't have an account? Please Sign Up"
  end
end

# I have to remove this to a helper spec file
def sign_up_with(username, email, password, password_confirmation)
  visit signup_path
  fill_in "Username", with: username
  fill_in "Email", with: email
  fill_in "Password", with: password
  fill_in "Confirmation", with: password_confirmation
  click_button "Create Account"
end

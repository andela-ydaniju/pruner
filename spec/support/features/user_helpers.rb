module Features
  module UserHelpers
    def sign_up_with(username, email, password, password_confirmation)
      visit signup_path
      fill_in "Username", with: username
      fill_in "Email", with: email
      fill_in "Password", with: password
      fill_in "Confirmation", with: password_confirmation
      click_button "Create Account"
    end
  end
end

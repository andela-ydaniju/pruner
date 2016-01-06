require "rails_helper"
describe "the signin process", :type => :feature do
  before :each do
    User.create(:username => "kabouli", :email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
  end

  it "signs me in" do
    visit '/sessions/new'

      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'

    click_button 'Sign In'
    expect(page).to have_content 'Welcome'
  end
end

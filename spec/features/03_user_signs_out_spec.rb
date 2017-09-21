require 'rails_helper'

feature 'user signs out', %Q{
  As a user
  I want to be able to sign out
} do

  scenario 'an existing user specifies a valid email and password' do
    navi = FactoryGirl.create(:user)
    login_as(navi, :scope => :user)

    visit new_user_session_path

    click_link 'Log Out'

    expect(page).to have_content("Signed out successfully.")
    expect(page).to have_content("Log In")
  end
end

require 'rails_helper'

feature 'sign in', %(
  As a user
  I want to sign in
  So that I can submit roll some dice
) do

  scenario 'user successfully signs in' do
    user = FactoryGirl.create(:user)
    visit root_path

    click_link 'Log In'

    fill_in 'Email', with: user.email
    find(".new_user [name='user[password]']").set user.password
    click_button 'Log In'

    expect(page).to have_content('Welcome back!')
    expect(page).to have_content('Log Out')
    expect(page).to_not have_content('Log In')
  end

  scenario 'a non-existent attempts to sign in' do
    visit new_user_session_path

    fill_in 'Email', with: 'Steve@example.com'
    find(".new_user [name='user[password]']").set "Abracadabra"

    click_button 'Log In'

    expect(page).to have_content('Invalid Email or password')
    expect(page).to have_content('Log In')
    expect(page).to_not have_content('Log Out')
  end

  scenario 'an existing user with the wrong password tries to sign in' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path

    fill_in 'Email', with: user.email
    find(".new_user [name='user[password]']").set "NotMyPassword"

    click_button 'Log In'

    expect(page).to have_content('Invalid Email or password')
    expect(page).to have_content('Log In')
    expect(page).to_not have_content('Log Out')
  end

  scenario 'A user cannot sign in when already in' do
    navi = FactoryGirl.create(:user)

    login_as(navi, :scope => :user)

    visit new_user_session_path

    expect(page).to have_content('You are already signed in')
  end
end

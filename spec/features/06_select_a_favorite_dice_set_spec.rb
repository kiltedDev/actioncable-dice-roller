require 'rails_helper'

feature 'user chooses a favorite dice set', %Q{
  As a player
  I want to be able to choose my dice to fit my character or mood
} do

  scenario 'a user visits their edit page and can select a new dice set' do
    navi = FactoryGirl.create(:user)
    gemini = FactoryGirl.create(:dice_set)
    fire = FactoryGirl.create(:dice_set, :fire)

    login_as(navi, :scope => :user)

    visit edit_user_registration_path(navi)

    fill_in 'user_current_password', with: navi.password
    choose "user_favorite_dice_2"

    click_button "Update"

    expect(page).to have_content("Your account has been updated successfully.")
  end
end

require 'rails_helper'

feature 'user invites a player', %Q{
  As a GM
  I want to be able to invite my friends to play at my table
} do

  scenario 'a GM successfully invites a player' do
    navi = FactoryGirl.create(:user)
    link = FactoryGirl.create(:user, :link)
    kokiri = FactoryGirl.create(:table)
    home = FactoryGirl.create(:invitation, user: navi, game_master: navi, table: kokiri)

    login_as(navi, :scope => :user)

    visit new_table_invitations_path(kokiri)

    click_link link.username

    expect(page).to have_content("#{link.username} was successfully invited to #{kokiri.name}")
  end
end

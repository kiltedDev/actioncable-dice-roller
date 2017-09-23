# require 'rails_helper'
#
# RSpec.describe DieRollsController, type: :controller, js: true do
#   describe "please" do
#     it "does" do
#       navi = FactoryGirl.create(:user)
#       kokiri = FactoryGirl.create(:table, game_master: navi)
#
#       login_as(navi, :scope => :user)
#
#       get :index, params: { table_id: 1 }
#     end
#   end
#   describe 'POST#create' do
#     it "creates a die roll when provided with proper parameters" do
#       navi = FactoryGirl.create(:user)
#       gemini = FactoryGirl.create(:dice_set)
#       kokiri = FactoryGirl.create(:table, game_master: navi)
#       message = Message.create(user: navi, table: kokiri, body: "Watch out!")
#       login_as(navi, :scope => :user)
#
#       post_params = {die_roll:{
#         dice_count: 2,
#         die_size: 8,
#         bonus: 20},
#         table_id: "#{kokiri.id}"}
#
#       post :create, params: post_params
#
#       expect { post :create, params: post_params }.to change { Message.count }.by 2
#
#     end
#   end
# end

require 'rails_helper'

RSpec.describe Message, type: :model do
  context "#user" do

        it { should have_valid(:body).when('Awesome Cat Review', "I didn't know bikes had two wheels")}
        it { should_not have_valid(:body).when(nil, '')}

        it { should belong_to :user }
        it { should belong_to :table }
  end
end

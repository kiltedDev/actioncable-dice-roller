require 'rails_helper'

RSpec.describe Message, type: :model do
  context "#message" do
    it { should have_valid(:body).when("Roll for Initiative", "Marquis, you're dead.")}
    it { should_not have_valid(:body).when(nil, '')}

  end

  context "associations" do
    it { should belong_to :user }
    it { should belong_to :table }
  end
end

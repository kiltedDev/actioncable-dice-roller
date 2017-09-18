require 'rails_helper'

RSpec.describe Table, type: :model do
  context "#user" do

    it { should have_valid(:name).when("Rappan Athuk", "Return to the Temple of Elemental Evil", "Tuesday" )}
    it { should_not have_valid(:name).when(nil, '')}

  end

  context "associations" do
    it { should have_many :users }
    it { should have_many :messages }
  end
end

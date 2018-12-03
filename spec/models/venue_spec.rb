require 'rails_helper'

RSpec.describe Venue, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    end

    describe "InDirect Associations" do

    it { should have_many(:dishes) }

    it { should have_many(:users) }

    end

    describe "Validations" do
      
    end
end

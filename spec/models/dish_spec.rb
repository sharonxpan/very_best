require 'rails_helper'

RSpec.describe Dish, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    end

    describe "InDirect Associations" do

    it { should have_many(:users) }

    it { should have_many(:venues) }

    end

    describe "Validations" do
      
    end
end

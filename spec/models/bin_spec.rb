require 'rails_helper'

RSpec.describe Bin, type: :model do
  describe "validations" do 
    it "has a valid bin factory" do 
      expect(build(:bin)).to be_valid
    end

    it "is invalid without a name" do 
      expect(build(:bin, name: nil)).not_to be_valid
    end

    it "requires a unique name" do 
      create(:bin, name: 'Hess')
      bin = build(:bin, name: 'Hess')
      bin.valid?
      expect(bin.errors.full_messages).to include("Name has already been taken")
    end

    it "is invalid without a bushel_capacity" do 
      expect(build(:bin, bushel_capacity: nil)).not_to be_valid
    end

    it "is invalid without a level" do 
      expect(build(:bin, level: nil)).not_to be_valid
    end
  end

  describe "relationships" do
    it "belongs to an account" do
    end
    
    it "has many loads" do 
    end

    it "has many drivers through loads" do 
    end

    it "has many fields through loads" do
    end
  end

  describe "class methods" do
    it "changes bin level based off last load" do
    end
  end
end

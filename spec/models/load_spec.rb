require 'rails_helper'

RSpec.describe Load, type: :model do
  describe "validations" do 
    it "has a valid load factory" do 
      expect(build(:load)).to be_valid
    end

    it "is invalid without a load_in" do 
      expect(build(:load, load_in: nil)).not_to be_valid
    end

    it "is invalid without a load_out" do 
      expect(build(:load, load_out: nil)).not_to be_valid 
    end
  end

  describe "relationships" do 
    it "belongs to an account" do
    end

    it "belongs to a driver" do
    end

    it "belongs to a bin" do
    end

    it "belongs to a field" do 
    end
  end

  describe "instance methods" do 
    it "has a test weight selected" do
    end
  end

  describe "class methods" do 
    it "has calculated bushels" do
    end
  end
end

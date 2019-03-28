require 'rails_helper'

RSpec.describe Driver, type: :model do
  describe "validations" do 
    it "has a valid driver factory" do 
      expect(build(:driver)).to be_valid
    end

    it "is invalid without a name" do 
      expect(build(:driver, name: nil)).not_to be_valid
    end
  end

  describe "relationships" do
    it "has and belongs to many loads" do
    end
  end
end

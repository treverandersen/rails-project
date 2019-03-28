require 'rails_helper'

RSpec.describe Field, type: :model do
  describe "validations" do 
    it "has a valid field factory" do 
      expect(build(:field)).to be_valid
    end

    it "is invalid without a name" do 
      expect(build(:field, name: nil)).not_to be_valid
    end

    it "requires a unique name" do 
      create(:field, name: 'Milos')
      field = build(:field, name: 'Milos')
      field.valid?
      expect(field.errors.full_messages).to include("Name has already been taken")
    end

    it "is invalid without acres" do 
      expect(build(:field, acres: nil)).not_to be_valid
    end
  end

  describe "relationships" do
    it "belongs to an account" do
    end

    it "has many loads" do
    end

    it "has many drivers through loads" do 
    end

    it "has many bins through loads" do
    end
  end

  describe "class methods" do
    it "gives bushel per acre based off last load from field" do end
  end

end

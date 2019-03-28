require 'rails_helper'

RSpec.describe Bin, type: :model do
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

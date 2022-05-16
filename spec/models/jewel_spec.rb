require 'rails_helper'

RSpec.describe Jewel, type: :model do

  subject { jewel = build(:jewel) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a jeweler_id" do
    subject.jeweler_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a material" do
    subject.material = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a type of stones" do
    subject.type_of_stones = nil
    expect(subject).to_not be_valid
  end

  it "is valid without #of stones" do
    subject.number_of_stones = nil
    expect(subject).to_not be_valid
  end

  it "is valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end

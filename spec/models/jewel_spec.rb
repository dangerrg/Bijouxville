require 'rails_helper'

RSpec.describe Jewel, type: :model do

  jeweler = Jeweler.create(name: "New Jeweler",
                      email: "test@example.com")
  subject {
    described_class.new(name: "Lux Safire",
                        jeweler_id: jeweler,
                        jeweler: jeweler,
                        material: "Gold",
                        type_of_stones: "Safire",
                        number_of_stones: 1,
                        description: "Necklaces")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.jeweler_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.material = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.type_of_stones = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.number_of_stones = nil
    expect(subject).to_not be_valid
  end

  it "is valid without a description" do
    subject.description = nil
    expect(subject).to be_valid
  end
end

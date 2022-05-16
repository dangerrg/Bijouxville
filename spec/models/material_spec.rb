require 'rails_helper'

RSpec.describe Material, type: :model do

  jeweler = Jeweler.create(name: "New Jeweler",
                      email: "test@example.com")

  jewel = Jewel.create(name: "Lux Safire",
                      jeweler_id: jeweler,
                      jeweler: jeweler,
                      material: "Gold",
                      type_of_stones: "Safire",
                      number_of_stones: 1,
                      description: "Necklaces")
  subject {
    described_class.new(name: "Silver",
                        base_cost: 5.5,
                        jewel: jewel)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is valid without a jewel_id" do
    subject.jewel_id = nil
    expect(subject).to be_valid
  end

  it "is not valid without a cost" do
    subject.base_cost = nil
    expect(subject).to_not be_valid
  end
end

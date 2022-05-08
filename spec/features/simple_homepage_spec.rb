require 'rails_helper'

RSpec.describe 'Simple homepage navigation', type: :feature do
  it "visit homepage" do
    visit root_path

    expect(page).to have_content('Welcome to Bijouxville')
  end

  it "can see resource's links" do
    visit root_path

    expect(page).to have_link('Home')
    expect(page).to have_link('Jeweler')
    expect(page).to have_link('Jewelry')
    expect(page).to have_link('Materials')
    expect(page).to have_link('Stones')
  end

  it "checks resources' stats" do
    visit root_path

    expect(page).to have_content('Total of jewelers:')
    expect(page).to have_content('Types of jewelry:')
    expect(page).to have_content('Types of gemstones:')
  end

  it "can navigate through resource links" do
    jeweler1 = Jeweler.create(name: "New Jeweler",
                        email: "test@example.com")
    jeweler2 = Jeweler.create(name: "jeweler2",
                        email: "test@example.com")
    jewel1 = Jewel.create(name: "Lux Safire",
                          jeweler_id: jeweler1,
                          jeweler: jeweler1,
                          material: "Gold",
                          type_of_stones: "Safire",
                          number_of_stones: 1)

    jewel2 = Jewel.create(name: "Lux Emerald",
                          jeweler_id: jeweler2,
                          jeweler: jeweler2,
                          material: "Silver",
                          type_of_stones: "Emerald",
                          number_of_stones: 2)
    jewel3 = Jewel.create(name: "Lux Diamond",
                          jeweler_id: jeweler2,
                          jeweler: jeweler2,
                          material: "Iron",
                          type_of_stones: "Diamond",
                          number_of_stones: 3)


    visit root_path
    expect(page).to have_link('Jewelers')
    click_link "Jewelers"
    expect(page).to have_content('Jewelers')
    click_on("Show this jeweler", match: :first)
    expect(page).to have_content('Name: New Jeweler')
    click_link "Jewelry"
    expect(page).to have_content('Jewels')
    expect(page).to have_content('Gold')
    expect(page).to have_content('Silver')
    expect(page).to have_content('Iron')
    expect(page).to have_content('Diamond')
    expect(page).to have_content('Emerald')
    expect(page).to have_content('Safire')
  end

end

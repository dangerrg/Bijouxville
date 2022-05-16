require 'rails_helper'

RSpec.describe 'Simple homepage navigation', type: :feature do
  it "visit homepage" do
    visit root_path

    expect(page).to have_content('Welcome to Bijouxville')
  end

  it "can see resources links" do
    visit root_path

    expect(page).to have_link('Home')
    expect(page).to have_link('Jeweler')
    expect(page).to have_link('Jewels')
    expect(page).to have_link('Materials')
    expect(page).to have_link('Stones')
  end

  it "checks resources' stats" do
    visit root_path

    expect(page).to have_content('Total of jewelers:')
    expect(page).to have_content('Types of jewels:')
    expect(page).to have_content('Types of precious stone:')
  end

  it "can navigate through resource links" do
    admin = FactoryBot.build(:jeweler, name: "admin",
                       email: "admin@example.com",
                       password: "password",
                       password_confirmation: "password",
                       role: "admin")
    jeweler2 = FactoryBot.build(:jeweler, name: "jeweler2",
                        email: "jeweler2@example.com",
                        password: "1234567890")

    jewel1 = FactoryBot.build(:jewel, name: "Lux Safire",
                          jeweler_id: jeweler1,
                          jeweler: jeweler1,
                          material: "Gold",
                          type_of_stones: "Safire",
                          number_of_stones: 1)

    jewel2 = FactoryBot.build(:jewel, name: "Lux Emerald",
                          jeweler_id: jeweler2,
                          jeweler: jeweler2,
                          material: "Silver",
                          type_of_stones: "Emerald",
                          number_of_stones: 2)
    jewel3 = FactoryBot.build(:jewel, name: "Lux Diamond",
                          jeweler_id: jeweler2,
                          jeweler: jeweler2,
                          material: "Iron",
                          type_of_stones: "Diamond",
                          number_of_stones: 3)

    visit root_path
    expect(page).to have_link('Jewelers')
    click_link "Jewelers"
    fill_in "jeweler_email", with: "admin@example.com"
    fill_in "jeweler_password", with: "password"
    click_on "Log in"
    expect(page).to have_content('Signed in successfully')
    expect(page).to have_content('New jeweler')
    expect(page).to have_content('Show')
    click_link("Show", match: :first)
    # expect(page).to have_content('Name: jeweler1')
    expect(page).to have_link('Jewels')
    click_link "Jewels"
    expect(page).to have_content('Jewels')
    # type_of_jewels
    expect(page).to have_content('Gold')
    expect(page).to have_content('Silver')
    expect(page).to have_content('Iron')
    # type_of_gemstones
    expect(page).to have_content('Diamond')
    expect(page).to have_content('Emerald')
    expect(page).to have_content('Safire')
  end

end

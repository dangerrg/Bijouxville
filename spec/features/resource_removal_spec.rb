require 'rails_helper'

RSpec.describe 'jewelry removal', type: :feature do
  it "remove resource and update values" do

    jeweler1 = FactoryBot.build(:jeweler, name: "jeweler1",
                        email: "jeweler1@example.com",
                        password: "1234567890")
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
    click_link "sign in"
    fill_in "jeweler_email", with: "jeweler1@example.com"
    fill_in "jeweler_password", with: "1234567890"
    click_on "Log in"
    expect(page).to have_content('Signed in successfully')
    expect(page).to have_content('Sum total of bijouxville: 30')

    visit jewels_path
    expect(page).to have_content('Jewels')
    click_button("Destroy", match: :first)
    sleep 2
    expect(page).to have_content('Jewel was successfully destroyed')
    visit root_path
    expect(page).to have_content('Sum total of bijouxville: 29')
  end
end

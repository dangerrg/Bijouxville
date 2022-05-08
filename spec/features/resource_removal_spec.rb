require 'rails_helper'

RSpec.describe 'jewelry removal', type: :feature do
  it "remove resource and update values" do
    # Given jeweler: 5 and jewels: 5 (seed) 
    visit root_path
    expect(page).to have_content('Total of jewels: 5')

    visit jewels_path
    expect(page).to have_content('Jewels')
    click_on("Show this jewel", match: :first)
    click_on("Destroy this jewel")

    visit root_path
    expect(page).to have_content('Total of jewels: 4')
  end
end

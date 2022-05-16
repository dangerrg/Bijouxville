require 'rails_helper'

# Given jewelers with jewels
#  When I am on the home page
#  Then I see the sum total of bijouxville (all jewels from all jewelers).
# And I see the total sum per type and per stone

RSpec.describe 'finance statistics methods', type: :feature do
  it "visit homepage" do
    # visit root_path
    #
    # expect(page).to have_content('Welcome to Bijouxville')
    admin = FactoryBot.build(:jeweler, name: "admin",
                       email: "admin@example.com",
                       password: "password",
                       password_confirmation: "password",
                       role: "admin")
   jeweler2 = FactoryBot.build(:jeweler, name: "jeweler2",
                       email: "jeweler2@example.com",
                       password: "password",
                       password_confirmation: "password")

   jewel1 = FactoryBot.build(:jewel, name: "Lux Safire",
                         jeweler_id: admin,
                         jeweler: admin,
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
   expect(admin).to be_admin
   expect(jeweler2).to be_valid
   expect(jewel1).to be_valid
   expect(jewel2).to be_valid
   expect(jewel3).to be_valid
   visit root_path
   expect(page).to have_content('Welcome to Bijouxville')
   expect(page).to have_content("Sum total of bijouxville:")
   expect(page).to have_content("Jewels total sum per type and per stone:")
   expect(page).to have_content("Jewels total sum per type:")
   expect(page).to have_content("Jewels total sum per stone:")

  end

end

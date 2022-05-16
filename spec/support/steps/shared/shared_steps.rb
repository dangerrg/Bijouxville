module Steps
  module Shared
    module SharedSteps

    # visit_home step
      def visit_home
        visit root_path
        expect(page).to have_content("Welcome to Bijouxville")
      end
      step :visit_home, "I'm on the home page"

    # jewelers_with_jewelry step
      def jewelers_with_jewelry
        jeweler1 = FactoryBot.build(:jeweler, name: "admin",
                            email: "admin@example.com",
                            password: "1234567890",
                            password_confirmation: "password",
                            role: "admin")
        jeweler2 = FactoryBot.build(:jeweler, name: "jeweler2",
                            email: "jeweler2@example.com",
                            password: "password",
                            password_confirmation: "password")

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
        expect(jeweler1).to be_valid
        expect(jeweler2).to be_valid
        expect(jewel1).to be_valid
        expect(jewel2).to be_valid
        expect(jewel3).to be_valid
      end
      step :jewelers_with_jewelry, "jewelers with jewelry"

    # sign_in step
      def sign_in
        visit new_jeweler_session_path
        fill_in "jeweler_email", with: "admin@example.com"
        fill_in "jeweler_password", with: "password"
        click_on "Log in"
        expect(page).to have_content('Signed in successfully')
      end
      step :sign_in, "sign_in"
    end
  end
end

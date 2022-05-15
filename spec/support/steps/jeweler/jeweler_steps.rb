module Steps
  module Jeweler
    module JewelerSteps

      step :visit_home   # Step define in spec/support/steps/shared/shared_steps.rb
      step :jewelers_with_jewelry   # Step define in spec/support/steps/shared/shared_steps.rb

      step 'I navigate to a jewelry page' do
        step :visit_home
        expect(page).to have_link('Jewels')
        click_link('Jewels')
        step :sign_in
        expect(page).to have_content('Jewels 3')
        expect(page).to have_content('Types of jewels: (3 types)')
        expect(page).to have_content('Types of precious stone: (3 types)')
      end

      step 'delete it' do
        click_button("Destroy", match: :first)
        expect(page).to have_content('Jewel was successfully destroyed')
      end

      step 'return to the home page' do
        step :visit_home
      end

      step 'the totals have been updated' do
        expect(page).to have_content('Sum total of bijouxville: 2')
      end

      step 'the type of jewelry and gemstone has not changed' do
        expect(page).to have_content('Types of jewels: (3 types)')
        expect(page).to have_content('Types of precious stone: (3 types)')
      end
    end
  end
end

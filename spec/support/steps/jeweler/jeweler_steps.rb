module Steps
  module Jeweler
    module JewelerSteps

      step :visit_home   # Step define in spec/support/steps/jeweler/jeweler_steps.rb
      step :jewelers_with_jewelry   # Step define in spec/support/steps/jeweler/jeweler_steps.rb

      step 'I navigate to a jewelry page' do
        visit root_path
        expect(page).to have_link('Jewels')
        click_link('Jewels')
        expect(page).to have_content('Jewels')
      end

      step 'delete it' do

      end

      step 'return to the home page' do
        step :visit_home
      end

      step 'the totals have been updated' do

      end

      step 'the type of jewelry and gemstone has not changed' do

      end
    end
  end
end

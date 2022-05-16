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
  end

end

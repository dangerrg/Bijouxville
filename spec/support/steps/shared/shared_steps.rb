module Steps
  module Shared
    module SharedSteps

      def visit_home
        visit root_path
        expect(page).to have_content("Welcome to Bijouxville")
      end
      step :visit_home, "I'm on the home page"

      def jewelers_with_jewelry
        jeweler1 = build(:jeweler)
        jeweler2 = build(:jeweler)
        jewel1 = build(:jewel)
        jewel2 = build(:jewel)
      end
      step :jewelers_with_jewelry, "jewelers with jewelry"
    end
  end
end

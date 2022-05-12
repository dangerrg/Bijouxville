module DataManager
  class DataSeeder < ApplicationService
# result = DataManager::DataSeeder.call(@jeweler)

    def initialize(jeweler, jewel)
      @jeweler = jeweler
      @jewel = jewel
    end

    def call
      seed_data
      setup_jeweler
      setup_jewel
    end

    private

    def setup_jeweler
      JewelerCreator.call(@jeweler)
    end

    def setup_jewel
      JewelCreator.call(@jewel)
    end

    def seed_data
      system("bash ./populate_data.sh")
    end
  end

end

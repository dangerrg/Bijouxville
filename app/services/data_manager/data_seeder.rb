require "factory_bot_rails"
module DataManager
  class DataSeeder < ApplicationService
# result = DataManager::DataSeeder.call(@jeweler)

    def initialize(jeweler, jewel, n)
      @jeweler = jeweler
      @jewel = jewel
      @n = n
    end

    def call
      # setup_jeweler
      # setup_jewel
      seed_data
    end

    private

    def setup_jeweler
      JewelerCreator.call(@jeweler)
    end

    def setup_jewel
      JewelCreator.call(@jewel)
    end

    def seed_data
      # system("bash ./populate_data.sh")
      admin = FactoryBot.create(:jeweler, email: "admin@bijouxville.ch", role: "admin")
      5.times do |n|
        jeweler1 = FactoryBot.create(:jeweler, email: "jeweler#{n}@bijouxville.ch")

        jewel0 = FactoryBot.create(:jewel, name: "Jewel #{n}",
                                jeweler_id: jeweler1,
                                jeweler: jeweler1,
                                material: "White Gold",
                                material_base_cost: 499.50,
                                type_of_stones: "Safire",
                                price_of_stone: 9.99,
                                number_of_stones: 2)

        jewel1 = FactoryBot.create(:jewel,name: "Jewel #{n}",
                              jeweler_id: jeweler1,
                              jeweler: jeweler1,
                              material: "Gold",
                              material_base_cost: 99.50,
                              type_of_stones: "Diamond",
                              price_of_stone: 29.99,
                              number_of_stones: 2)

        jewel2 = FactoryBot.create(:jewel,name: "Lux Emerald #{n}",
                              jeweler_id: jeweler1,
                              jeweler: jeweler1,
                              material: "Silver",
                              material_base_cost: 99.50,
                              type_of_stones: "Emerald",
                              price_of_stone: 29.99,
                              number_of_stones: 2)

        jewel3 = FactoryBot.create(:jewel,name: "Lux Diamond #{n}",
                              jeweler_id: jeweler1,
                              jeweler: jeweler1,
                              material: "Iron",
                              material_base_cost: 299.50,
                              type_of_stones: "Diamond",
                              price_of_stone: 29.99,
                              number_of_stones: 3)

        jewel4 = FactoryBot.create(:jewel,name: "Lux Black Diamond #{n}",
                              jeweler_id: jeweler1,
                              jeweler: jeweler1,
                              material: "Platinium",
                              material_base_cost: 399.50,
                              type_of_stones: "Black Diamond",
                              price_of_stone: 39.99,
                              number_of_stones: 4)

        jewel5 = FactoryBot.create(:jewel,name: "Lux Ruby #{n}",
                              jeweler_id: jeweler1,
                              jeweler: jeweler1,
                              material: "White Gold",
                              material_base_cost: 499.50,
                              type_of_stones: "Ruby",
                              price_of_stone: 49.99,
                              number_of_stones: 5)
      end

      stone1 = Stone.create(name: "Safire",        jewel_id: 1, price: 9.99)
      stone2 = Stone.create(name: "Emerald",       jewel_id: 2, price: 19.99)
      stone3 = Stone.create(name: "Diamond",       jewel_id: 3, price: 29.99)
      stone4 = Stone.create(name: "Black Diamond", jewel_id: 4, price: 39.99)
      stone5 = Stone.create(name: "Ruby",          jewel_id: 5, price: 49.99)

      material1 = Material.create(name: "Gold",       jewel_id: 1, base_cost: 99.50)
      material2 = Material.create(name: "Silver",     jewel_id: 2, base_cost: 199.50)
      material3 = Material.create(name: "Iron",       jewel_id: 3, base_cost: 299.50)
      material4 = Material.create(name: "Platinium",  jewel_id: 4, base_cost: 399.50)
      material5 = Material.create(name: "White Gold", jewel_id: 5, base_cost: 499.50)
    end
  end
end

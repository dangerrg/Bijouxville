class HomeController < ApplicationController
  def index
    # Display total number_of_jewelers
    @jewelers = Jeweler.all
    @number_of_jewelers = @jewelers.length

    # Display total number_of_jewels
    @jewels = Jewel.all
    @number_of_jewels = @jewels.length

    # Display total number_of_materials
    @materials = Material.all
    @number_of_materials = @materials.length

    # Display total number_of_stones
    @stones = Stone.all
    @number_of_stones = @stones.length

    @type_of_gold = Jewel.where('material LIKE ?','Gold')
    @type_of_silver = Jewel.where('material LIKE ?','Silver')
    @type_of_iron = Jewel.where('material LIKE ?','Iron')
    @type_of_platinum = Jewel.where('material LIKE ?','Platinium')
  end
end

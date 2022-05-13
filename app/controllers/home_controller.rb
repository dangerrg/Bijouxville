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

    @type_of_gold = Jewel.type_of_gold
    @type_of_silver = Jewel.type_of_silver
    @type_of_iron = Jewel.type_of_iron
    @type_of_platinum = Jewel.type_of_platinum
    @type_of_white_gold = Jewel.type_of_white_gold

    @jewels_total_sum = @type_of_gold + @type_of_silver + @type_of_iron + @type_of_platinum + @type_of_white_gold

  end
end

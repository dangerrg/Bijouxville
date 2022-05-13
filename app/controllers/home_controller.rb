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

    @with_of_safire = Jewel.with_of_safire
    @with_of_emerald = Jewel.with_of_emerald
    @with_of_diamond = Jewel.with_of_diamond
    @with_of_black_diamond = Jewel.with_of_black_diamond
    @with_of_ruby = Jewel.with_of_ruby

    @total_sum_per_type = (@type_of_gold + @type_of_silver + @type_of_iron + @type_of_platinum + @type_of_white_gold).length
    @total_sum_per_stone = (@with_of_safire + @with_of_emerald + @with_of_diamond + @with_of_black_diamond + @with_of_ruby).length
    @jewels_total_sum = (@total_sum_per_type + @total_sum_per_stone)
  end

  
end

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
  end
end

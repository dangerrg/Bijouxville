module JewelHandler
  class JewelCreator < ApplicationService

    def initialize(jewel)
      @jewel = jewel
    end

    # call methods
    def call
      create_jewel
    end

    def create_jewel
      return OpenStruct.new(success?: false, jewel: nil, errors: @jewel.errors) unless @jewel.save

      OpenStruct.new(success?: true, jewel: @jewel, errors: nil)
    end

    private

    attr_reader :name, :material, :type_of_stones, :number_of_stones, :description, :price, :jeweler_id
  end
end

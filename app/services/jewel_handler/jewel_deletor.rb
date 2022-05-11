module JewelHandler
  class JewelDeletor < ApplicationService
    def initialize(jewel)
      @jewel = jewel
    end

    # call method
    def call
      delete_jewel
    end

    def delete_jewel
      result = @jewel.destroy

      update_jewel_status
    end

    def update_jewel_status
      # maybe call jewels#index
    end

  end
end

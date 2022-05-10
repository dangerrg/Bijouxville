class JewelerCreator < ApplicationService

  def initialize(jeweler)
    @jeweler = jeweler
  end

  # call methods
  def call
    create_jeweler
  end

  def create_jeweler
    if @jeweler.save
      true
    else
      @jeweler.errors.add(:base, "Could not create jeweler")
      false
    end
  end

  private

  attr_reader :name, :email
end

class JewelerCreator < ApplicationService

  def initialize(jeweler)
    @jeweler = jeweler
  end

  # call methods
  def call
    create_jeweler
  end

  def create_jeweler
    return OpenStruct.new(success?: false, jeweler: nil, errors: @jeweler.errors) unless @jeweler.save

    OpenStruct.new(success?: true, jeweler: @jeweler, errors: nil)
  end

  private

  attr_reader :name, :email
end

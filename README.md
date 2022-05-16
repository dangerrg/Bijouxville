## Project Name: Bijoux or Bijouville

Tech:
Rails version             7.0.2.4
Ruby version              ruby 3.0.3p157 (2021-11-24 revision 3fb7d2cadc) [x86_64-darwin19]
RubyGems version          3.2.32
Rack version              2.2.3
Database adapter          postgresql

## Overview:
Welcome to Bijouville, the the best jewerly market place in the area!...

## App Data & Structure

`Jeweler model`
=============
associations    =>    has_many :jewels, dependent: :destroy
attributes      =>    :name, :email, :password, :password_confirmation, :role

`Jewel model`
===========
associations    =>    belongs_to :jeweler
											has_many :material
                      has_many :stones

attributes      =>    :name, :material, :type_of_stones, :number_of_stones, :description, :price, :material_base_cost, :price_of_stone, :jeweler_id

enum :description, { Necklaces: "Necklaces", Pendants: "Pendants", Earrings: "Earrings", Bracelets: "Bracelets", Rings: "Rings", Brooches: "Brooches", Charms: "Charms", Wedding_Bands: "Wedding_Bands" }

`Stone model`
===========
associations    =>    belongs_to :jewel
											belongs_to :jeweler
                      has_many :stones

attributes      =>    :name, :price

`Material model`
===========
associations    =>    belongs_to :jewel
											belongs_to :jeweler
                      has_many :stones

attributes      =>    :name, :base_cost

## Test Rspec

- Spec/factories:
   • jewel.rb
   • jeweler.rb
   • material.rb
   • stone.rb

- Spec/features:
  • finance_statistics_spec
  • resource_removal_spec
  • simple_homepage_spec

- Spec/features/jeweler:
  • jeweler.feature

- Spec/models:
  • jewel_spec
  • jeweler_spec
  • material_spec
  • stone_spec

- Spec/models:
  • jewel_spec
  • jeweler_spec
  • material_spec
  • stone_spec

- Spec/support/Steps:  (turnip)
  - jeweler/jeweler_steps
  - jeweler/shared_steps


## Services

• JewelCreator  - Create a jeweler through the jewelers#create action
• JewelDeletor  - Delete a jewel through the jewels#destroy action
• DataManager::DataSeeder - This service will create a Jeweler, and initiate and seed the app throughthe cmd: `rails db:seed` or `rails db:reset`


## List of relevant gems

# for testing
gem `'rspec-rails'`
gem `'capybara'`
gem `"turnip"`

# for populating data
gem `"ffaker"` (was not used)
gem `"factory_bot_rails"`

# For authorization & authentication
gem `'devise'`
gem `"can can"`

# for database (All environments)
gem `pg` - postgresql

## Deployment
Heroku

## Challenges

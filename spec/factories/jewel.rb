FactoryBot.define do
  factory :jewel do
    sequence(:name)                 {|n| "Jewel#{n}"}
    jeweler_id                      { 5 }
    materials                       { "Gold" }
    stones                          { "Safire" }
    sequence(:number_of_stones)     {|n|}
    description                     { "Short description"}
    price                           { 9.99 }
  end
end

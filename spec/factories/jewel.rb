FactoryBot.define do
  factory :jewel do
    sequence(:name)                 {|n| "Jewel#{n}"}
    jeweler_id                      { 1 }
    material                        { "Gold" }
    material_base_cost              { 99.99}
    type_of_stones                  { "Safire" }
    price_of_stone                  { 9.99}
    number_of_stones                {10}
    description                     { "Necklaces" }
    price                           { }
  end
end

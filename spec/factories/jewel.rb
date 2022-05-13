FactoryBot.define do
  factory :jewel do
    sequence(:name)                 {|n| "Jewel#{n}"}
    jeweler_id                      { 1 }
    material                        { "Gold" }
    type_of_stones                  { "Safire" }
    number_of_stones                {10}
    description                     { "Necklaces" }
    price                           { 9.99 }
  end
end

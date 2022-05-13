FactoryBot.define do
  factory :jewel do
    sequence(:name)                 {|n| "Jewel#{n}"}
    sequence(:jeweler_id)           {|n| + 1}
    materials                       { "Gold" }
    stones                          { "Safire" }
    sequence(:number_of_stones)     {|n| + 1}
    description                     { "Short description"}
    price                           { 9.99 }
  end
end

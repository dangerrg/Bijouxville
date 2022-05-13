FactoryBot.define do
  factory :stone do
    sequence(:name)         {|n| "Jewel#{n}"}
    jewel_id                { 5 }
    sequence(:price)        {9.99}
  end
end

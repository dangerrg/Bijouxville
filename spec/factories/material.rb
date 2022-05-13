FactoryBot.define do
  factory :material do
    sequence(:name)         {|n| "Material#{n}"}
    jewel_id                { 5 }
    sequence(:base_cost)    {99.50}
  end
end

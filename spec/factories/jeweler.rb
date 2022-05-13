FactoryBot.define do
  factory :jeweler do
    sequence(:name)    {|n| "jeweler#{n + 1}"}
    sequence(:email)   {|n| "jeweler#{n + 1}@bijouxville.ch"}
    password              {"1234567890"}
    password_confirmation {"1234567890"}
  end
end

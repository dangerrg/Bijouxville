FactoryBot.define do
  factory :jeweler do
    sequence(:name)    {|n| "jeweler#{n}"}
    sequence(:email)   {|n| "jeweler#{n}@bijouxville.ch"}
    password              {"1234567890"}
    password_confirmation {"1234567890"}
  end
end

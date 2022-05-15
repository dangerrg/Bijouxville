FactoryBot.define do
  factory :jeweler do
    sequence(:name)       {|n| "jeweler#{n}"}
    sequence(:email)      {|n| "jeweler#{n}@bijouxville.ch"}
    password              {"password"}
    password_confirmation {"password"}
    role                  {"seller"}
  end
end

FactoryBot.define do
  factory :jeweler do
    name                  {"test_jeweler_name"}
    email                 {"test@jeweler.com"}
    password              {"1234567890"}
    password_confirmation {"1234567890"}
  end
end

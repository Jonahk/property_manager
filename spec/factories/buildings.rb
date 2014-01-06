# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    name "Parents House"
    address "461 Sutton Pl"
    city "Memphis"
    state "TN"
    zip_code "38120"
    description "Where I grew up"
  end
end

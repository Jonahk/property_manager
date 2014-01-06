# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "Jonah"
    last_name "Kaufman"
    email "jonah@gmail.com"
    company_name "Cool Company"

  end
end

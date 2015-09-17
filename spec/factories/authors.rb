FactoryGirl.define do
  factory :author do
    name "Stephen King"
    years_active 35
    biography "Born in Derry, Maine"

    trait :poe do
      name "Edgar Allan Poe"
      years_active 20
      biography "Don't know"
    end
  end

end

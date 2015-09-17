FactoryGirl.define do
  factory :book do
    title "Pet Semetary"
    publication_year 1982
    synopsis "Louis brings his son back from the dead by burying him in an ancient indian burial ground"
    author

    trait :poe do
      title "The Pit and The Pendulum"
      synopsis "Spanish Inquisition torture story"
      author nil
    end

    trait :matheson do
      title "Hell House"
      publication_year 1977
      synopsis "Paranormal experts attempt to rid an ancient house of the evil soul that once physically inhabited the house"
    end

  end

end

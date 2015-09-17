FactoryGirl.define do
  factory :book do
    title "Pet Semetary"
    author "Stephen King"
    publication_year 1982
    synopsis "Louis brings his son back from the dead by burying him in an ancient indian burial ground"

    trait :poe do
      title "The Pit and The Pendulum"
      author "Edgar Allan Poe"
      synopsis "Spanish Inquisition torture story"
    end

    trait :matheson do
      title "Hell House"
      author "Richard Matheson"
      publication_year 1977
      synopsis "Paranormal experts attempt to rid an ancient house of the evil soul that once physically inhabited the house"
    end

  end

end

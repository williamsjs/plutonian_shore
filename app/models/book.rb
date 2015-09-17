class Book < ActiveRecord::Base
  validates :publication_year, presence: true
end

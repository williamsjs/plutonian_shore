class Book < ActiveRecord::Base
  belongs_to :author
  validates :publication_year, presence: true

end

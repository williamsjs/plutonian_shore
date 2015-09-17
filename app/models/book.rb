class Book < ActiveRecord::Base
  belongs_to :author
  validates :publication_year, :author, presence: true


end

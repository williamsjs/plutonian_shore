class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.float :rating
      t.text :review
      t.text :description
      t.string :author
      t.date :date_published
      t.integer :year

      t.timestamps null: false
    end
  end
end

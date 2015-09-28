class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.float :rating
      t.date :release_date
      t.text :review
      t.text :article
      t.string :author
      t.string :developer

      t.timestamps null: false
    end
  end
end

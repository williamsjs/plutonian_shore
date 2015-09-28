class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :image
      t.text :content
      t.date :date_published
      t.string :author

      t.timestamps null: false
    end
  end
end

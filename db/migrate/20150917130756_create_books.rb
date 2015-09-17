class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.references :author
      t.integer :publication_year
      t.text :synopsis

      t.timestamps null: false
    end
  end
end

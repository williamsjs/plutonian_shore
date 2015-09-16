class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.1984 :year
      t.text :synopsis

      t.timestamps null: false
    end
  end
end

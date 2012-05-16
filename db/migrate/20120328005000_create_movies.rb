class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :film_director
      t.text :description
      t.text :cast
      t.integer :copy_number
      t.references :category

      t.timestamps
    end
    add_index :movies, :category_id
  end
end

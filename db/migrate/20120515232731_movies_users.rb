class MoviesUsers < ActiveRecord::Migration
  def up
    create_table :movies_users, :id => false do |t|
      t.integer :movie_id, :null => false
      t.integer :user_id, :null => false
    end
  end

  def down
    drop_table :movies_users
  end
end

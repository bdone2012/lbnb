class CreateFavMovies < ActiveRecord::Migration
  def change
    create_table :fav_movies do |t|
      t.string :movie
      t.references :user
      t.timestamps
    end
  end
end

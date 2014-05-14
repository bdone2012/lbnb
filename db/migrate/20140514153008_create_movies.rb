class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :fav_movie
      t.references :user
      t.timestamps
    end
  end
end

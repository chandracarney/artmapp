class CreateUserArtistRatings < ActiveRecord::Migration
  def change
    create_table :user_artist_ratings do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end
end

class CreateUserArtworkRatings < ActiveRecord::Migration
  def change
    create_table :user_artwork_ratings do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :artwork_id

      t.timestamps
    end
  end
end

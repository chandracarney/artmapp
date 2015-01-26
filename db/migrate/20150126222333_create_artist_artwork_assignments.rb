class CreateArtistArtworkAssignments < ActiveRecord::Migration
  def change
    create_table :artist_artwork_assignments do |t|
      t.integer :artist_id
      t.integer :artwork_id
      t.timestamps
    end
  end
end
